package com.neuedu.controller;

import com.neuedu.pojo.Category;
import com.neuedu.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class CategoryController {
    @Autowired
    CategoryServiceImpl categoryService;

    @RequestMapping("/find")
    public String findAll(HttpSession httpSession){
        List<Category> categories=categoryService.searchallcate();
        httpSession.setAttribute("categorylists",categories);
        return "redirect:categorylist";
    }
    @RequestMapping("categorylist")
    public String categorylist(){
        return "category/list";
    }

    @RequestMapping("/update/{id}")
    public String updatecategory(@PathVariable("id")Integer categoryid,HttpSession httpSession){
        //查询信息
        Category category=categoryService.findBycateid(categoryid);
        httpSession.setAttribute("updatecategory",category);
        return "category/updatecategory";
    }

    @RequestMapping("/reallyupdate")
    public String reallyupdate(Category category){//直接拿到对象
        //到数据库里面进行修改，然后再次登录
        System.out.println(category.getId());
        int result=categoryService.updatecate(category);
        if(result==1){
            //再次登录
            return "redirect:/user/find";//不太理解????????????绝对路径
        }
        return "category/updatecategory";
    }


    @RequestMapping("/insertcategory")
    public String insertCategory() {
        return "insertCategory";
    }


    @RequestMapping("/reallyinsertcategory")
    public String insertCategory(Category category){
        int result=categoryService.insertcate(category);
        if(result==1){
            return "redirect:/user/find";
        }
        return "redirect:/user/insertcategory";   //??????????????????
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id")int id){
        int result=categoryService.deletecate(id);
        return "redirect:/user/find";
    }

//    @RequestMapping("xianshicategory")
//    public String xianshicategory(){
//
//    }


}
