package com.vang.blog.brief.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @描述 : 关于博客内容的一些请求跳转
 * @作者 : 王杰
 * @时间 : 2018年10月13日  19:27
 */
@Controller
@RequestMapping("/")
public class JumpController {

    /**
     *  跳转到博客首页
     * @return blog/index.ftl
     */
    @GetMapping("/")
    public String index(){
        return "blog/index";
    }

    /**
     * 跳转到文章查看详细页面 todo改进
     * @return blog/blogDetails.ftl
     */
    @GetMapping("/contents")
    public String contents(){
        //使用动态逻辑
        return "blog/blogDetails";
    }
    /**
     * 跳转到归档
     * @return blog/blogDetails.ftl
     */
    @GetMapping("/archives")
    public String archives(){

        return "blog/archives";
    }
}
