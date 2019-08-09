package com.neuedu.service;

import com.neuedu.pojo.Category;
import com.neuedu.pojo.Product;

import java.util.List;

public interface IProductService {

    //增加
    public int insertProduct(Product product);

    //删除
    public int deleteProductByID(int productid);

    //修改
    public int updateProduct(Product product);

    //查找全部
    public List<Product> findAllProduct();

    //查找某一个
    public Product findOneById(int productid);

    //查询所有类别信息
    public List<Category> findAllCategory();

}
