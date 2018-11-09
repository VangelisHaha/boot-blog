package com.vang.blog;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/**
 * spring boot的核心启动类
 */
@SpringBootApplication
@MapperScan("com.vang.blog.*.mapper")
public class BootBlogApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootBlogApplication.class, args);
    }
}
