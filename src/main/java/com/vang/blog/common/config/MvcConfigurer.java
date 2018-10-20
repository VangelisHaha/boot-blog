package com.vang.blog.common.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @描述 : spring mvc 配置
 * @作者 : 王杰
 * @时间 : 2018/7/3 11:23
 */
@Configuration
public class MvcConfigurer extends WebMvcConfigurerAdapter {

    /**
     * 添加拦截器 todo
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
	    //全局拦截器
    }

    /**
     * 跨域访问配置
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("*");
    }

}
