package com.neuedu.service;

import com.neuedu.exception.Myexception;
import com.neuedu.pojo.Category;

import java.util.List;

public interface ICategoryService {
    //添加类别
    public int insertcate(Category category) throws Myexception;

    //删除
    public int deletecate(int categoryid) throws Myexception;

    //修改
    public int updatecate(Category category) throws Myexception;

    //查询
    public List<Category> searchallcate() throws Myexception; //最后实现分页查询

    //通过id查询类别信息
    public Category findBycateid(int careid);

}
