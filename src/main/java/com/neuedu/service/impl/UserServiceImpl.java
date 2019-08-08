package com.neuedu.service.impl;

import com.neuedu.dao.UserInfoMapper;
import com.neuedu.exception.Myexception;
import com.neuedu.pojo.UserInfo;
import com.neuedu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    UserInfoMapper userInfoMapper;

    @Override
    public UserInfo login(UserInfo userInfo) throws Myexception {
        //参数的非空校验
        if(userInfo==null){
            throw new Myexception("参数不能为空");
        }
        if(userInfo.getUsername()==null||userInfo.getUsername().equals("")){
            throw new Myexception("用户名不能为空！");
        }
        if(userInfo.getPassword()==null||userInfo.getPassword().equals("")){
            throw new Myexception("密码不能为空！");
        }

        //判断用户名是否存在
        int result=userInfoMapper.exsitsUsername(userInfo.getUsername());
        if(result==0){
            throw new Myexception("用户名不存在");
        }


        //根据用户名和密码登录
       UserInfo userInfo1=userInfoMapper.findByUsernameAndPassword(userInfo);
        if(userInfo1==null){
            throw new Myexception("密码错误");
        }


        //判断权限
        if(userInfo1.getRole()!=1){
            throw new Myexception("没有权限访问");
        }


        return userInfo1;
    }

    @Override
    public List<UserInfo> findAllUserInfo() {
        List<UserInfo> userInfos=userInfoMapper.selectAll();
        return userInfos;
    }

    @Override
    public UserInfo findUserByid(int id) {
        UserInfo userInfo=userInfoMapper.selectByPrimaryKey(id);
        return userInfo;
    }

    @Override
    public int UpdateUser(UserInfo userInfo) {
        int result=userInfoMapper.updateByPrimaryKey(userInfo);
        return result;
    }

    @Override
    public int insertUser(UserInfo userInfo) {
        int result=userInfoMapper.insert(userInfo);
        return result;
    }

    @Override
    public int deleteUserById(int userid) {
        int result=userInfoMapper.deleteByPrimaryKey(userid);
        return result;
    }
}
