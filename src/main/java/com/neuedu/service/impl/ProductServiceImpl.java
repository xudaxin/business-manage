package com.neuedu.service.impl;

import com.neuedu.dao.ProductMapper;
import com.neuedu.pojo.Category;
import com.neuedu.pojo.Product;
import com.neuedu.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public int insertProduct(Product product) {
        int result=productMapper.insert(product);
        return result;
    }

    @Override
    public int deleteProductByID(int productid) {
        int result=productMapper.deleteByPrimaryKey(productid);
        return result;
    }

    @Override
    public int updateProduct(Product product) {
        int result=productMapper.updateByPrimaryKey(product);
        return result;
    }

    @Override
    public List<Product> findAllProduct() {
        List<Product>products=productMapper.selectAll();
        return products;
    }

    @Override
    public Product findOneById(int productid) {
        Product product=productMapper.selectByPrimaryKey(productid);
        return product;
    }

    @Override
    public List<Category> findAllCategory() {
        List<Category> categorymessage=productMapper.findAllCategoryMessage();
        return categorymessage;
    }

}
