package com.neuedu.controller;

import com.neuedu.pojo.Category;
import com.neuedu.pojo.Product;
import com.neuedu.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class ProductController {
    @Autowired
    private ProductServiceImpl productService;

    @RequestMapping("/product")
    public String  product(HttpSession httpSession){
        List<Product> products=productService.findAllProduct();
        httpSession.setAttribute("productlist",products);
        return "productsindex";
    }


    @RequestMapping("/deleteproduct/{id}")
    public String deleteProduct(@PathVariable("id") int id){
        int result=productService.deleteProductByID(id);
        if(result==1){
            return "redirect:/user/product";
        }
        return "productsindex";
    }

    @RequestMapping("/addproduct")
    public String addproduct(HttpSession httpSession){
        //获取数据库中所有的商品类别信息，在类别表查出所有id
        List<Category> categorylist=productService.findAllCategory();
        httpSession.setAttribute("categoryMessagelist",categorylist);
        return "addproduct";
    }


    @RequestMapping("/upload")
    public String reallyupload(@RequestParam("name") String name,
                               @RequestParam("categoryId") int categoryId,
                               @RequestParam("subtitle")String subtitle,
                               @RequestParam("detail")String detail,
                               @RequestParam("price")BigDecimal price,
                               @RequestParam("stock")int stock,
                               @RequestParam("pic")MultipartFile uploadFile){

        Product product=new Product();
        product.setName(name);
        product.setCategoryId(categoryId);
        product.setSubtitle(subtitle);
        product.setDetail(detail);
        product.setPrice(price);
        product.setStock(stock);

        if(uploadFile!=null){
            //生成一个新的文件名
            String uuid= UUID.randomUUID().toString();
            //拿到文件的扩展名(截取)
            String filename=uploadFile.getOriginalFilename();
            System.out.println("文件名 = [" + filename + "]");
            String kuozhanming=filename.substring(filename.lastIndexOf("."));
            String newname=uuid+kuozhanming;
            System.out.println("新的文件名 = [" + newname + "]");

            String address="D:\\实训\\文件上传处\\"+newname;
            product.setMainImage(address); //到此数据封装完毕
            System.out.println(product);

            //将文件保存在该目录下
            File file=new File("D:\\实训\\文件上传处");  //路径加上文件名存入到数据库中
            //如果不存在，创建该目录
            if(!file.exists()){
                file.mkdir();
            }
            File newFile=new File(file,newname);
            try {
                //将文件写入到磁盘中
                uploadFile.transferTo(newFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            int result=productService.insertProduct(product);
            if(result==1){
                return "redirect:/user/product";
            }
        }
        return "addproduct";
    }


    @RequestMapping("/updateproduct/{id}")
    public String updateProduct(@PathVariable("id") int id,HttpSession httpSession){
        //通过id找到商品信息
        Product product=productService.findOneById(id);

        httpSession.setAttribute("updateproduct",product);
        return "updateproduct";

    }

    @RequestMapping("/reallyUpdateProduct")
    public String reallyUpdateProduct(@RequestParam("name") String name,
                                      @RequestParam("categoryId") int categoryId,
                                      @RequestParam("subtitle")String subtitle,
                                      @RequestParam("detail")String detail,
                                      @RequestParam("price")BigDecimal price,
                                      @RequestParam("stock")int stock,
                                      @RequestParam("id") int id,
                                      @RequestParam("uppic")MultipartFile uploadFile){

        Product product=new Product();
        product.setId(id);
        product.setName(name);
        product.setCategoryId(categoryId);
        product.setSubtitle(subtitle);
        product.setDetail(detail);
        product.setPrice(price);
        product.setStock(stock);

        if(uploadFile!=null){
            //生成一个新的文件名
            String uuid= UUID.randomUUID().toString();
            //拿到文件的扩展名(截取)
            String filename=uploadFile.getOriginalFilename();
            System.out.println("文件名 = [" + filename + "]");
            String kuozhanming=filename.substring(filename.lastIndexOf("."));
            String newname=uuid+kuozhanming;
            System.out.println("新的文件名 = [" + newname + "]");

            String address="D:\\实训\\文件上传处\\"+newname;
            product.setMainImage(address); //到此数据封装完毕
            System.out.println(product);

            //将文件保存在该目录下
            File file=new File("D:\\实训\\文件上传处");  //路径加上文件名存入到数据库中
            //如果不存在，创建该目录
            if(!file.exists()){
                file.mkdir();
            }
            File newFile=new File(file,newname);
            try {
                //将文件写入到磁盘中
                uploadFile.transferTo(newFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            int result=productService.updateProduct(product);
            if(result==1){
                return "redirect:/user/product";
            }
        }
        return "updateproduct";
    }



}
