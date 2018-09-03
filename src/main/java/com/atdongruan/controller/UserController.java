package com.atdongruan.controller;
import com.atdongruan.bean.Post;
import com.atdongruan.bean.ReturnContant;
import com.atdongruan.bean.User;
import com.atdongruan.service.PostService;
import com.atdongruan.service.UserService;
import com.atdongruan.util.GetMessageCode;
import com.atdongruan.util.UploadUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import javafx.scene.paint.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Controller
public class UserController {
    @Autowired
    UserService userService;

//    @Autowired
//    UploadUtils uploadUtils;

    @RequestMapping("/uploadMaterial/{leaveId}")
    @ResponseBody
    public Map uploadMaterial(MultipartFile multipartFile, HttpServletRequest request, @PathVariable("leaveId")Integer leaveId) {

        Map map = new HashMap();

        if(!("jpg".equalsIgnoreCase(multipartFile.getOriginalFilename().substring( multipartFile.getOriginalFilename().lastIndexOf(".")+1,multipartFile.getOriginalFilename().length() ))) &&
                !("png".equalsIgnoreCase(multipartFile.getOriginalFilename().substring( multipartFile.getOriginalFilename().lastIndexOf(".")+1,multipartFile.getOriginalFilename().length() )))) {
            map.put("error","材料只能为图片格式");
            return map;
        }
        UploadUtils uploadUtils =new UploadUtils();
        String imgPath = uploadUtils.upload(multipartFile,request);
        if (imgPath == null) {
            map.put("error","材料只能为图片格式");
            return map;
        }
        System.out.println(imgPath+"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        User user= new User();
        user.setuImage(imgPath);
        user.setuEmail("1582231073@qq.com");
        user.setuName("小陈");
        user.setuMopile("17329505972");
        userService.register(user);
        map.put("success","上传成功");
        return map;
    }




    @RequestMapping(value="addUsers")
    public String addBrand(User cdm_Brand,HttpServletRequest request) throws IllegalStateException, IOException {
        String img="";
        // 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        // 检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            // 将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            // 获取multiRequest 中所有的文件名
            Iterator<String> iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                // 一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next());
                if (file != null) {
                    // 服务端保存文件的路径
                    String path = request.getServletContext().getRealPath("upload");
                    File uploadFile = new File(path);
                    if (!uploadFile.exists()) {
                        // 当保存文件的目录不存在则创建
                        uploadFile.mkdirs();
                    }
                    path = uploadFile.getAbsolutePath() + "/" + file.getOriginalFilename();
                    System.out.println(file.getOriginalFilename()+"++++++++++++++++++++");
                    // 上传
                    file.transferTo(new File(uploadFile.getAbsolutePath(), file.getOriginalFilename()));
                    img=file.getOriginalFilename();
                }
            }
        }
        String content = request.getParameter("content");
        //System.out.println("内容描述:" + content);
        SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
       // String b_time =sdf.format(new Date());
      //  cdm_Brand.setB_time(b_time);
        cdm_Brand.setuImage(img);
        //productService.addBrand(cdm_Brand);
        userService.register(cdm_Brand);
        //System.out.println("============="+cdm_Brand.getB_name()+cdm_Brand.getB_state()+cdm_Brand.getB_time());
        return "Users/register";

    }




//    @RequestMapping("/addUsers")
//    public String addUsers(HttpServletRequest request ,User user,MultipartFile pictureFile) throws Exception{
//        System.out.println("1111111111111111+++++++++++++++++++++++++==="+user.getuImage());
//        //使用UUID给图片重命名，并去掉四个“-”
//        String name = UUID.randomUUID().toString().replaceAll("-", "");
//        System.out.println("222222222222222222+++++++++++++++++++++++++==="+name);
//        //获取文件的扩展名
//        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
//        System.out.println("333333333333333333+++++++++++++++++++++++++==="+ext);
//        //设置图片上传路径
//        String url = request.getSession().getServletContext().getRealPath("/upload");
//        System.out.println("4444444444444444444444+++++++++++++++++++++++++==="+url);
//        System.out.println(url);
//        //以绝对路径保存重名命后的图片
//        pictureFile.transferTo(new File(url+"/"+name + "." + "ext"));
//        System.out.println("55555555555555555555+++++++++++++++++++++++++==="+user.getuImage());
//        //把图片存储路径保存到数据库
//        user.setuImage("upload/"+name + "." + "ext");
//
//        userService.register(user);
//        //重定向到查询所有用户的Controller，测试图片回显
//        System.out.println("666666666666666666666666666666666+++++++++++++++++++++++++==="+user.getuImage());
//        return "Users/register";
//    }

        @Resource
    private ReturnContant returnContant;
    /**
     * 根据获取到的手机号发送验证码
     * @param request
     * @param phone 获取的手机号码
     * @return
     */
    @RequestMapping(value="/sendSMS",method=RequestMethod.POST)
    public @ResponseBody ReturnContant sendSMS(HttpServletRequest request,String phone){
        /**
         * 根据获取到的手机号发送验证码
         */

        String code= GetMessageCode.getCode(phone);
        returnContant.setStatus(1);
        returnContant.setData(code);
        return returnContant;
    }




    /**
     * 转到登录页面
     * @return
     */
    @RequestMapping("/toUserLogin")
    public String toLogin(){
        return "Users/login";
    }

    /**
     * 用户登录
     * Users/success
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public  String Login(HttpServletRequest request){
        String uName = request.getParameter("uName");
        System.out.println("uName" + uName);
        String uPassword = request.getParameter("uPassword");
        System.out.println("uPassword" + uPassword);
        User user = userService.findUser(uName, uPassword);
        if (user!=null){
            System.out.println("登录成功");
            request.getSession().setAttribute("User",user);
            return "Users/success";
        }else{
            System.out.println("登录失败");
            return "Users/login";
        }

    }

    /**
     * 用户注册
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("/register")
    public String Register(HttpServletRequest request, User user){
        System.out.println("到这里注册！！！@！！！！"+user.getuName());
       int a=userService.register(user);
        System.out.print("返回值"+a);
        return "Users/success";
    }

    /**
     *     转到注册页面
     * @return
     */

    @RequestMapping("/toRegister")
    public String toRegister(){
        return "Users/register";
    }


    /**
     * 注销登录
     * @param session
     * @return
     */
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        session.invalidate();
        return "Users/login";
    }

    /**
     * 转发到首页并查询数据库的帖子
     * @return
     */


     @Autowired
    PostService postService;
   @RequestMapping("/main")
    public String Main(Model model){
       PageHelper.startPage(1,5);
       List<Post> emp = postService.getAll();
       PageInfo page = new PageInfo(emp, 5);
       model.addAttribute("Post", page);
        return "Users/main";
    }
    @RequestMapping("/tex")
    public String Tex(){
        //SendEmail.sendEmail("1582231073@qq.com","123456");
        return "Users/texRegister";
    }




}






//    @Controller
//// @RequestMapping("/mvc")
//    public class MVCController {
//        //http://localhost:8080/SpringMVCTest/hello
//        @RequestMapping("/hello")
//        public String hello(HttpServletRequest req, Model model) {
//            String userName = req.getParameter("userName");
//            model.addAttribute("userName", "hello :" + userName);
//            return "hello";//通过视图解析器返回给hello.jsp
//            //下面这个也可以用，但用的时候需要取消掉上述视图解析器中的前缀配置
//            //return "/jsp/hello";
//        }
