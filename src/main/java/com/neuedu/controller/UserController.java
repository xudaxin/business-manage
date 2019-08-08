package com.neuedu.controller;

import com.neuedu.pojo.UserInfo;
import com.neuedu.service.IUserService;
import com.neuedu.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String reallylogin(){
        return "login";
    }

    @RequestMapping(value = "/login",method =RequestMethod.POST )
    public String reallylogin(UserInfo userInfo, HttpSession httpSession,HttpServletResponse response){
        UserInfo userInfo1=userService.login(userInfo);
        //七天免登录的实现
        Cookie cookieusername= new Cookie("username",userInfo1.getUsername());
        Cookie cookiepassword=new Cookie("password",userInfo1.getPassword());
        cookieusername.setMaxAge(60*60*24*7);
        cookiepassword.setMaxAge(60*60*24*7);
        response.addCookie(cookieusername);
        response.addCookie(cookiepassword);//响应到客户端response

        httpSession.setAttribute("admintor",userInfo1);
        List<UserInfo>userInfos=userService.findAllUserInfo();
        httpSession.setAttribute("userInfos",userInfos);
        return "redirect:index";
    }

    @RequestMapping("/index")  //为啥不用加"/"号？？？？？？？？？？？？？
    public String index(){
        return "index";
    }

    @RequestMapping("updateuser/{id}")
    public String update(@PathVariable("id")int id,HttpSession httpSession){
        UserInfo userInfo=userService.findUserByid(id);
        httpSession.setAttribute("updateuser",userInfo);
        return "update";
    }

    @RequestMapping("/reallyupdateuser")
    public String reallyupdate(UserInfo userInfo,HttpSession httpSession,HttpServletResponse response){
        int result=userService.UpdateUser(userInfo);
        if(result==1){
            //return "forward:/user/reallylogin";  //???????????绝对路径？？？？
            UserInfo admin=(UserInfo) httpSession.getAttribute("admintor");
            return reallylogin(admin,httpSession,response);
        }
        return "index";
    }

    @RequestMapping("/insertUser")
    public String insertUser(){
        return "adduser";
    }


    @RequestMapping("/reallyinsertUser")
    public String reallyinsertUser(UserInfo userInfo,HttpSession httpSession,HttpServletResponse response){
        int result=userService.insertUser(userInfo);
        if(result==1){
            UserInfo admin=(UserInfo) httpSession.getAttribute("admintor");
            return reallylogin(admin,httpSession,response);
        }
        return "adduser";
    }


    @RequestMapping("/deleteuser/{id}")
    public String deleteUser(@PathVariable("id")int id,HttpSession httpSession,HttpServletResponse response){
        int result=userService.deleteUserById(id);
        if(result==1){
//            UserInfo admin=(UserInfo) httpSession.getAttribute("admintor");
//            return reallylogin(admin,httpSession,response);


//            UserInfo admin=(UserInfo) httpSession.getAttribute("admintor");
//            UserInfo userInfo1=userService.login(admin);//为了判断是否把自己删除了
            return "redirect:/user/index";  //上面调用这个方法没出现错误可能是因为不是restful请求？？？？？？？？？？？？？？？？
        }
        return "index";
    }



}
