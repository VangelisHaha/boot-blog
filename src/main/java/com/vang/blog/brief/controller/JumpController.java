package com.vang.blog.brief.controller;

import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class JumpController {

    /**
     *  跳转到博客首页
     * @return blog/index.ftl
     */
    @GetMapping("/")
    public String index(){
        log.debug("测试日志输出{}","哈哈");
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

    /**
     * 跳转到相册
     * @return blog/blogDetails.ftl
     */
    @GetMapping("/photo")
    public String photo(){
        return "blog/photo";
    }
    /**
     * 跳转到嗨起来
     * @return blog/blogDetails.ftl
     */
    @GetMapping("/musicBlog")
    public String musicBlog(){
        return "blog/musicBlog";
    }
    /**
     * 跳转到嗨起来
     * @return blog/blogDetails.ftl
     */
    @GetMapping("/music")
    public String music(){
        return "blog/music";
    }
    /**
     * 跳转到视频
     * @return blog/video.ftl
     */
    @GetMapping("/video")
    public String video(){
        return "blog/video";
    }
}
