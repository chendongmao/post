package com.atdongruan.controller;//package com.atdongruan.controller;
//
//import com.atdongruan.service.RegisterValidateService;
//import com.atdongruan.util.ServiceException;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.text.ParseException;
//
//@Controller
//public class RegisterController {
//
//    @Resource
//    private RegisterValidateService service;
//
//    @RequestMapping(value="/user/register",method={RequestMethod.GET,RequestMethod.POST})
//    public ModelAndView load(HttpServletRequest request, HttpServletResponse response) throws ParseException {
//        String action = request.getParameter("action");
//        System.out.println("-----r----"+action);
//        ModelAndView mav=new ModelAndView();
//
//        if("register".equals(action)) {
//            //注册
//            String email = request.getParameter("email");
//            service.processregister(email);//发邮箱激活
//            mav.addObject("text","注册成功");
//            mav.setViewName("register/register_success");
//        }
//        else if("activate".equals(action)) {
//            //激活
//            String email = request.getParameter("email");//获取email
//            String validateCode = request.getParameter("validateCode");//激活码
//
//            try {
//                service.processActivate(email , validateCode);//调用激活方法
//                mav.setViewName("register/activate_success");
//            } catch (ServiceException e) {
//                request.setAttribute("message" , e.getMessage());
//                mav.setViewName("register/activate_failure");
//            }
//
//        }
//        return mav;
//    }
//
//
//}
