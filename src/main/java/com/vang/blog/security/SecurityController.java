package com.vang.blog.security;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @描述 : 后台登录页面
 * @作者 : 王杰
 * @时间 : 2018年10月20日  16:57
 */
@Controller
@RequestMapping("admin")
@Slf4j
public class SecurityController {

    /**
     * 请求缓存
     */
    private RequestCache requestCache = new HttpSessionRequestCache();

    /**
     * 当需要身份验证时跳转到这里
     * @param request 请求
     * @param response 返回
     * @return 页面
     */
    @RequestMapping("authentication")
    public String authentication(HttpServletRequest request, HttpServletResponse response) {
        //获取被拦截登录前的请求来源
        SavedRequest savedRequest = requestCache.getRequest(request, response);
        //如果从其他页面跳转过来
        if (savedRequest!=null) {
            //可以实现
            String redirectUrl = savedRequest.getRedirectUrl();
            log.info("引发跳转的请求是：" + redirectUrl);
        }
        return "admin/login";
    }
}
