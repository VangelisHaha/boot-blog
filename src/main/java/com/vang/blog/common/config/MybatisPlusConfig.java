package com.vang.blog.common.config;

import com.baomidou.mybatisplus.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.plugins.PerformanceInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @描述 : 这是mybatis的配置类
 * @作者 : 王杰
 * @时间 : 2018/7/24 11:05
 */
@EnableTransactionManagement
@Configuration
@MapperScan(value = {"com.icaremgt.admin.*.mapper"})
public class MybatisPlusConfig {
    /**
     * mybatis-plus SQL执行效率插件【生产环境可以关闭】
     *  设置 dev test 环境开启
     */
    @Bean
    @Profile({"dev","test","native"})
    public PerformanceInterceptor performanceInterceptor() {
        PerformanceInterceptor performanceInterceptor = new PerformanceInterceptor();
        //SQL 执行性能分析，开发环境使用，线上不推荐。 maxTime 指的是 sql 最大执行时长  目前10s
        performanceInterceptor.setMaxTime(5000);
        //<!--SQL是否格式化 默认false-->
        performanceInterceptor.setFormat(true);
        return performanceInterceptor;
    }

    /**
     * mybatis-plus分页插件<br>
     * 文档：http://mp.baomidou.com<br>
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
        paginationInterceptor.setDialectType("mysql");
        return paginationInterceptor;
    }
}
