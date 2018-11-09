package com.vang.blog.common.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.async.DeferredResult;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * SwaggerConfig
 */
@Configuration
@EnableSwagger2
public class Swagger2Config {
    /**
     * 项目域名
     */
    @Value("${local_domain_name:}")
    private String domainName;


    /**
     * 定义make包
     * 注意host属性可以指定域名访问
     *
     * @return 加入ioc容器
     */
    @Bean
    public Docket testApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("博客项目的一些通用接口")
                .genericModelSubstitutes(DeferredResult.class)
                .useDefaultResponseMessages(false)
                .forCodeGeneration(true)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.vang.blog.test"))
                .paths(PathSelectors.any())
                .build()
                .apiInfo(new ApiInfoBuilder()
                        //大标题
                        .title("测试测试")
                        //详细描述
                        .description("哈哈哈哈")
                        //版本
                        .version("")
                        .termsOfServiceUrl("")
                        //作者
                        .contact(new Contact("王杰", "http://www.baidu.com", "wangjie@icaremgt.com"))
                        .license("嘻嘻嘻嘻")
                        .licenseUrl("")
                        .build())
                ;
    }

}