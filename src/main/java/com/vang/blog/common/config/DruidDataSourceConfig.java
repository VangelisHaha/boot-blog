package com.vang.blog.common.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * @描述 : Druid数据源配置
 * @作者 : 王杰
 * @时间 : 2018/6/21 11:50
 */
@Configuration
public class DruidDataSourceConfig {
    /**
     * 读取application的配置信息 用于创建DruidDataSource数据源
     *
     * @return dataSource加入IOC容器
     */
    @ConfigurationProperties(prefix = "spring.datasource")
    @Bean
    public DataSource dataSource() {
        return new DruidDataSource();
    }

    /**
     * 配置数据源的管理后台监控 Servlet  再次可以配置允许ip访问。账户名密码
     *
     * @return 将service加入IOC容器
     */
    @Bean
    public ServletRegistrationBean statViewServlet() {
        ServletRegistrationBean bean = new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
        Map<String, String> initParams = new HashMap<>(3);
        //默认就是允许所有访问
        initParams.put("allow", "");
        initParams.put("loginUsername", "vangelis");
        initParams.put("loginPassword", "Vangelis");
        bean.setInitParameters(initParams);
        return bean;
    }
    /**
     * 配置监控的filter
     * @return 加入IOC容器
     */
    @Bean
    public FilterRegistrationBean webStatFilter() {
        FilterRegistrationBean bean = new FilterRegistrationBean();
        bean.setFilter(new WebStatFilter());
        Map<String, String> initParams = new HashMap<>();
        initParams.put("exclusions", "*.js,*.css,/druid/*");
        bean.setInitParameters(initParams);
        bean.setUrlPatterns(Collections.singletonList("/*"));
        return bean;
    }


}
