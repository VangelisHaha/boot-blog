package com.vang.blog.common.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @描述 : 公共字段自动填充配置
 * @作者 : 王杰
 * @时间 : 2018年11月08日  15:23
 */
@Component
@Slf4j
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("start insert fill ....");
        final Object createTime = getFieldValByName("createTime", metaObject);
        final Object updateTime = getFieldValByName("updateTime", metaObject);
        if (null==createTime){
            metaObject.setValue("createTime",new Date());
        }
        if (null==updateTime){
            metaObject.setValue("updateTime",new Date());
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {

    }
}
