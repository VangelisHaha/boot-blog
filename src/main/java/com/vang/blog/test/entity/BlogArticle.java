package com.vang.blog.test.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 博客文章信息表
 * </p>
 *
 * @author Vangelis
 * @since 2018-11-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BlogArticle extends Model<BlogArticle> {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "article_id", type = IdType.AUTO)
    private Long articleId;

    /**
     * 文章内容
     */
    private String articleContent;

    /**
     * 文章标题
     */
    private String articleTitle;

    /**
     * 文章目录
     */
    private String artcleDirectory;

    /**
     * 阅读量
     */
    private Long articleReading;

    /**
     * 博客id
     */
    private Long blogId;

    /**
     * 全局统一逻辑删除字段，未删除为1.已删除为-1
     */
    private Boolean deleteFlag;

    /**
     * 创建时间
     */
    @TableField(value = "create_time",fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 创建时间
     */
    private Date updateTime;


    @Override
    protected Serializable pkVal() {
        return this.articleId;
    }

}
