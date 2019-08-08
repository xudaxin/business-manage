package com.neuedu.service.impl;

import com.neuedu.dao.CategoryMapper;
import com.neuedu.exception.Myexception;
import com.neuedu.pojo.Category;
import com.neuedu.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    CategoryMapper categoryMapper;
    @Override
    public int insertcate(Category category) throws Myexception {
        int result=categoryMapper.insert(category);
        return result;
    }

    @Override
    public int deletecate(int categoryid) throws Myexception {
        int result=categoryMapper.deleteByPrimaryKey(categoryid);
        return result;
    }

    @Override
    public int updatecate(Category category) throws Myexception {
        int result=categoryMapper.updateByPrimaryKey(category);
        return result;
    }

    @Override
    public List<Category> searchallcate() throws Myexception {
        List<Category> categories=categoryMapper.selectAll();
        return categories;
    }

    @Override
    public Category findBycateid(int careid) {
        Category category=categoryMapper.selectByPrimaryKey(careid);
        return category;
    }
}
