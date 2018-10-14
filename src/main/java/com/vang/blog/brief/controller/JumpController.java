package com.vang.blog.brief.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @描述 : 页面跳转
 * @作者 : 王杰
 * @时间 : 2018年10月13日  19:27
 */
@Controller
@RequestMapping("/")
public class JumpController {

    @GetMapping("/")
    public String index(){
        System.out.println("请求进来了！");
        return "index";
    }
}
