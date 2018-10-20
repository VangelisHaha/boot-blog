package com.vang.blog.common.config;

import com.vang.blog.common.holder.SpringContextHolder;
import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.client.RestTemplate;

/**
 * @描述 : 相当于spring的配置文件
 * @作者 : 王杰
 * @时间 : 2018年07月24日  18:57
 */
@Configuration
public class ConfigBean {
    /**
     * 这个是spring boot统一封装请求模板
     *
     * @return 对象
     */
    @Bean
    public RestTemplate getRestTemplate() {
        return new RestTemplate();
    }

    /**
     * bean 容器
     *
     * @return 对象
     */
    @Bean
    public SpringContextHolder springContextHolder() {
        return new SpringContextHolder();
    }


    /**
     * 用于404 请求拦截
     */
    @Bean
    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryCustomizer() {
        return factory -> factory.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/404.html"));
    }
}
