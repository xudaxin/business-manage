package com.neuedu.service;

import com.neuedu.exception.Myexception;
import com.neuedu.pojo.UserInfo;

import java.util.List;

public interface IUserService {
    public UserInfo login(UserInfo userInfo) throws Myexception;
    public List<UserInfo> findAllUserInfo();
    public UserInfo findUserByid(int id);
    public int UpdateUser(UserInfo userInfo);
    public int insertUser(UserInfo userInfo);
    public int deleteUserById(int userid);
}
