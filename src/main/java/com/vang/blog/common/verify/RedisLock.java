package com.vang.blog.common.verify;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

/**
 * @描述 : redis的分布式锁
 * @作者 : 王杰
 * @时间 : 2018年11月08日  15:58
 */
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RUNTIME)
public @interface RedisLock {
    /**
     * 定制   q   ` 锁id，默认使用方法名，也可以传入
     */
    String lockKey() default "";

    /**
     * 获取锁超时时间
     */
    String acquireTimeOut() default "1000";

    /**
     * 锁超时时间
     */
    String timeOut() default "10000";
}
