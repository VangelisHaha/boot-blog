package com.vang.blog.common.verify;

import com.vang.blog.common.service.LockService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * @描述 : redis分布式锁切面
 * @作者 : 王杰
 * @时间 : 2018年11月08日  15:59
 */
@Aspect
@Component
@Slf4j
public class RedisLockAspect {

    /**
     * 注入LockService组件
     */
    @Autowired
    private LockService lockService;

    /**
     * 锁的有效时间10s
     */
    private final Long timeOut = 10000L;

    /**
     * 定义切点
     */
    @Pointcut("@annotation(RedisLock)")
    public void redisLock() { }

    /**
     * 使用切点环绕，逻辑，在需要使用分布式锁加上注解，统一处理释放
     */
    @Around("redisLock()")
    public Object redisLock(ProceedingJoinPoint point) throws Throwable {
        Method method = getMethod(point);
        String name = method.getName();
        String redisLock = lockService.getRedisLock(name, 1000L, timeOut);

        log.debug("redisLock -->> {} start ...",name);
        Object obj;
        //成功获取到锁
        log.debug("lockid -->> {}",redisLock);
        if (StringUtils.isNotEmpty(redisLock)) {
            obj = point.proceed();
            lockService.releaseLock(name, redisLock);
        }else {
            obj = "获取锁超时，请等待";
        }
        log.debug("redisLock -->> {} end ...",obj);
        return obj;
    }

    /**
     * 获取方法
     *
     * @param joinPoint ProceedingJoinPoint
     * @return 方法
     */
    private Method getMethod(ProceedingJoinPoint joinPoint) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        if (method.getDeclaringClass().isInterface()) {
            try {
                method = joinPoint
                        .getTarget()
                        .getClass()
                        .getDeclaredMethod(joinPoint.getSignature().getName(),
                                method.getParameterTypes());
            } catch (SecurityException | NoSuchMethodException e) {
                log.error("反射获取方法名出错" + e);
            }
        }
        return method;
    }
}
