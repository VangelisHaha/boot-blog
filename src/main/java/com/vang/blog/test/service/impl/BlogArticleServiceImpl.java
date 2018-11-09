package com.vang.blog.test.service.impl;

import com.vang.blog.test.entity.BlogArticle;
import com.vang.blog.test.mapper.BlogArticleMapper;
import com.vang.blog.test.service.IBlogArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 博客文章信息表 服务实现类
 * </p>
 *
 * @author Vangelis
 * @since 2018-11-08
 */
@Service
public class BlogArticleServiceImpl extends ServiceImpl<BlogArticleMapper, BlogArticle> implements IBlogArticleService {

}
