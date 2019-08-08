package com.neuedu.interceptors;


import com.neuedu.pojo.UserInfo;
import com.neuedu.service.impl.UserServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

//@Controller
public class AuthorityInterceptor implements HandlerInterceptor{
    @Autowired
    private UserServiceImpl userService;
    HttpServletResponse response;
    @Autowired
    HttpSession httpSession;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        System.out.println("准备拦截");
        //判断cookies
        String username=null;
        String password=null;
        Cookie [] cookies=request.getCookies();
        if (cookies!=null&&cookies.length>0){
            for(Cookie c:cookies){
                if(c.getName().equals("username")){
                    username=c.getValue();
                }
                if (c.getName().equals("password")){
                    password=c.getValue();
                }
            }
        }
        if(username!=null&&password!=null){
            UserInfo user=new UserInfo();
            user.setUsername(username);
            user.setPassword(password);
            UserInfo administrator=userService.login(user);
            if(administrator!=null){//说明这个人之前登陆过
                httpSession.setAttribute("admintor",administrator);   //把信息放到session中
                List<UserInfo> userInfos=userService.findAllUserInfo();
                httpSession.setAttribute("userInfos",userInfos);
                return true;
            }
        }
        else {
            try {
                System.out.println("拦截，跳转");
                response.sendRedirect("/user/login");  //这是绝对路径吗？？？？？？？？？？？？
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
        System.out.println("成功返回");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        System.out.println("成功执行完");
    }
}
