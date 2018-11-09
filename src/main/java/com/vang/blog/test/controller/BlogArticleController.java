package com.vang.blog.test.controller;


import com.vang.blog.common.verify.RedisLock;
import com.vang.blog.test.entity.BlogArticle;
import com.vang.blog.test.service.IBlogArticleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 博客文章信息表 前端控制器
 * </p>
 *
 * @author Vangelis
 * @since 2018-11-08
 */
@RestController
@RequestMapping("/blog-article")
@Slf4j
public class BlogArticleController {

    /**
     * 注入IBlogArticleService组件
     */
    @Autowired
    private IBlogArticleService blogArticleService;

    @PostMapping
    @RedisLock
    public String addArticle(){
        BlogArticle blogArticle = new BlogArticle();
        blogArticle.setArticleContent("hahahah");
        blogArticle.setArtcleDirectory("xixiixix");
        blogArticle.setArticleReading(1L);
        blogArticle.setArticleTitle("xlkjlfskjdf");
        blogArticle.setBlogId(1L);
        log.debug("保存结果{}",blogArticleService.save(blogArticle));
        return "success";
    }
}

