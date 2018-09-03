package com.atdongruan.controller;//
//package com.atdongruan.controller;
//
//import com.atdongruan.bean.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.servlet.http.HttpServletRequest;
//import java.util.UUID;
//
//@Controller
//@RequestMapping("/file")
//public class FileController {
//
//    @Autowired
//    IUserService userService;
//
//    @RequestMapping("/upload")
//    public String upload(User user, HttpServletRequest request, Model model) throws Exception{
//        System.out.println(request.getParameter("name"));
//        //保存数据库的路径
//        String sqlPath = null;
//        //定义文件保存的本地路径
//        String localPath="D:\\File\\";
//        //定义 文件名
//        String filename=null;
//        if(!user.getFile().isEmpty()){
//            //生成uuid作为文件名称
//            String uuid = UUID.randomUUID().toString().replaceAll("-","");
//            //获得文件类型（可以判断如果不是图片，禁止上传）
//            String contentType=user.getFile().getContentType();
//            //获得文件后缀名
//            String suffixName=contentType.substring(contentType.indexOf("/")+1);
//            //得到 文件名
//            filename=uuid+"."+suffixName;
//            System.out.println(filename);
//            //文件保存路径
//            user.getFile().transferTo(new File(localPath+filename));
//        }
//        //把图片的相对路径保存至数据库
//        sqlPath = "/images/"+filename;
//        System.out.println(sqlPath);
//        user.setImage(sqlPath);
//        userService.addUser(user);
//        model.addAttribute("user", user);
//        return "MyJsp";
//    }
