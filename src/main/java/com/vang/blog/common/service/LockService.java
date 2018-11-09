package com.vang.blog.common.service;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * @描述 : Redis分布式锁
 * @作者 : 王杰
 * @时间 : 2018年11月01日  11:16
 */
@Component
@Slf4j
public class LockService {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    private final String REDIS_LOCK_PREFIX = "lock:";


    /**
     * 思路，执行并发业务代码时先调用此方法获取锁id
     *  定义redis key 对应value，称锁的id，不允许重复 引用与删除  释放锁都是用的同一把锁
     *  使用循环机制控制重复获取锁的资源，乐观锁
     *  使用setNx,创建成功返回1即为获取到锁id，让对应锁id设置有效期
     * @param lockKey 锁的key
     * @param acquireTimeOut 重复获取锁的超时时间 毫秒
     * @param timeOut 锁的有效时间 毫秒
     * @return 锁id
     */
    public String getRedisLock(String lockKey,Long acquireTimeOut, Long  timeOut) {
        String lockId = UUID.randomUUID().toString();
        int lockTime = (int) (timeOut / 1000);
        //获取过期的时间
        long endTime = System.currentTimeMillis() + acquireTimeOut;
        //循环获取锁
        while (System.currentTimeMillis() < endTime) {
            //对应setnx命令
            if(stringRedisTemplate.opsForValue().setIfAbsent(REDIS_LOCK_PREFIX+lockKey,lockId)){
                //可以成功设置,也就是key不存在
                stringRedisTemplate.expire(REDIS_LOCK_PREFIX+lockKey, lockTime, TimeUnit.SECONDS);
                return lockId;
            }
        }
        return null;
    }

    /**
     * 释放锁
     * @param lockKey 锁key
     * @param lockId  锁id
     */
    public void releaseLock(String lockKey,String lockId) {
        if (StringUtils.isNotEmpty(lockId)&&StringUtils.isNotEmpty(lockKey)) {
            String currentValue = stringRedisTemplate.opsForValue().get(REDIS_LOCK_PREFIX+lockKey);
            //判断锁id和key都符合才允许解锁
            if (StringUtils.isNotEmpty(currentValue) && currentValue.equals(lockId)) {
                //删除key
                stringRedisTemplate.opsForValue().getOperations().delete(REDIS_LOCK_PREFIX+lockKey);
            }
        }
    }
}
