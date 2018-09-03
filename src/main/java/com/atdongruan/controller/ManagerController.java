package com.atdongruan.controller;


import com.atdongruan.bean.User;
import com.atdongruan.service.ManagerService;
import com.atdongruan.util.ObjectExcelView;
import com.atdongruan.util.PageData;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ManagerController {
    @Autowired
    ManagerService managerService;


    /**
     * 导出Excel
     * @return
     * @throws Exception
     */
    @RequestMapping("/exportExcel")
    public ModelAndView exportExcel()throws Exception{
        ModelAndView mv ;
                //= this.getModelAndView();
        PageData pd = new PageData();
       // pd = this.getPageData();
        //检索条件

        Map<String,Object> dataMap = new HashMap<String,Object>();
        List<String> titles = new ArrayList<String>();

        titles.add("密码");
        titles.add("邮箱");
        titles.add("手机");
        titles.add("姓名");
        dataMap.put("titles", titles);

        List<User> memberList = managerService.exportExcelInfo();
        List<PageData> varList = new ArrayList<PageData>();
        for(int i=0;i<memberList.size();i++){
            PageData vpd = new PageData();
            vpd.put("var1", memberList.get(i).getuPassword());
            vpd.put("var2", memberList.get(i).getuEmail());
            vpd.put("var3", memberList.get(i).getuMopile());
            vpd.put("var4", memberList.get(i).getuName());
            varList.add(vpd);
        }
        dataMap.put("varList", varList);
        ObjectExcelView erv = new ObjectExcelView();
        mv = new ModelAndView(erv,dataMap);

        return mv;
    }


    /**
     * 查询所有用户
     */
    @RequestMapping("/searchUsers")
    public String searchUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<User> users = managerService.searchUsers();
        PageInfo page = new PageInfo(users, 5);
        model.addAttribute("pageInfo", page);
        return "Manager/users";
    }

    /**
     * 模糊查询用户
     * @param user
     * @param model
     * @return
     */
     @RequestMapping("/ManagerSearchUser")
    public String ManagerSearchUser(User user , Model model){
        PageHelper.startPage(1,10);
        List <User> users=managerService.ManagerSearchUser(user);
         PageInfo page = new PageInfo(users, 5);
        model.addAttribute("User",page);
        System.out.println(user.getuName()+"++++++++++++++++++");
         System.out.println(users.size()+"++++++++++++++++++");
        return "Manager/users";
    }
    /**
     * excel 表的导入
     */
    @RequestMapping(value = "/uploadExcel" ,method={RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public String uploadExcel(HttpServletRequest request) throws Exception {
        //获取上传的文件

        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        //MultipartHttpServletRequest multipart = (MultipartHttpServletRequest) request;
        MultipartFile file = multipartRequest.getFile("upfile");
        System.out.println(file.isEmpty()+"    b b    IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIiii");
        InputStream in = file.getInputStream();
        System.out.println(in.toString());
        //数据导入

     managerService.importExcelInfo(in,file);
        System.out.println("8888888888888888");
        in.close();
        return "Manager/users";
    }


    /**
     * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     * 页面逻辑跳转
     * @return
     */
    @RequestMapping("/users")
    public String toTex(){
        System.out.println("进入ManagerControllerCONTROLEER");
        return "Manager/users";
    }

    /**
     * 跳到后台管理员主页
     * @return
     */
    @RequestMapping("/toHome")
    public String toHome(){
        System.out.println("到了tohome");
        return "Manager/index";

    }

    /**
     * 修改用户信息
     * @return
     */
    @RequestMapping("/addUser")
    public String addUser( HttpServletRequest request, User user){
        System.out.println(user.getuName()+"        用户名");
        User user1 = managerService.findUser(user);
        if (user1!=null){
            System.out.println("回显成功");
            request.getSession().setAttribute("User",user1);
        }else{
            System.out.println("回显失败");
        }
        return "Manager/addUser";
    }

    /**
     * 导入用户表
     * @return
     */
    @RequestMapping("/addFace")
    public String addFace(){
        return "Manager/addFace";
    }




}
