package com.atdongruan.service;

import com.atdongruan.bean.User;
import com.atdongruan.bean.UserExample;
import com.atdongruan.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/8/7 0007.
 */
@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    //用户登录
//    public User login(String userNmae){
//        User user1 = userMapper.findByUsername(userNmae);
//        if(user1!=null) {
//            System.out.println(user1.getuId());
//                return user1 ;
//        }
//        System.out.println("到这里 ！！！！！");
//       return null;
//    }

      //用户注册

    public int register(User user)  {
        System.out.println(user.getuImage()+"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        user.setuImage("njngbgjbgj");
        return   userMapper.insertSelective(user);
    }

    /**
     * 登录
     * @param uName
     * @param uPassword
     * @return
     */
    public User findUser(String uName, String uPassword) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUNameEqualTo(uName).andUPasswordEqualTo(uPassword);
        User user = userMapper.selectByUserExample(example);
        return user;
    }
}
