package com.atdongruan.service;

import com.atdongruan.bean.User;
import com.atdongruan.bean.excel.ExcelBean;
import com.atdongruan.bean.excel.ExcelUtil;
import com.atdongruan.dao.UserMapper;
import com.atdongruan.util.PageData;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

@Service
public class ManagerService {
    @Autowired
    UserMapper userMapper;

    public List<User> exportExcelInfo() throws Exception{

        return userMapper.selectByExample(null);
    }




    /**
     * 查询所有用户
     * @return
     */
    public List<User> searchUsers() {

        return userMapper.selectByExample(null);

    }

    /**
     * 查询部分用户
     * @param user
     * @return
     */

    public List<User> ManagerSearchUser(User user) {
        return  userMapper.ManagerSearchUser(user);
    }
    /**
     * excel表的导入
     */
    public String importExcelInfo(InputStream in, MultipartFile file) throws Exception{
        System.out.println("KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
        List<List<Object>> listob = ExcelUtil.getBankListByExcel(in,file.getOriginalFilename());

        List<User> userArrayList = new ArrayList<>();
        //遍历listob数据，把数据放到List中
        for (int i = 0; i < listob.size(); i++) {
            List<Object> us = listob.get(i);
            User user = new User();
            user.setuPassword(String.valueOf(us.get(0)));
            System.out.println("密码："+user.getuPassword());
            user.setuEmail(String.valueOf(us.get(1)));
            System.out.println("邮箱："+user.getuEmail());
            user.setuMopile(String.valueOf(us.get(2)));
            System.out.println("手机："+user.getuMopile());

            user.setuName(String.valueOf(us.get(3)));
            System.out.println("姓名："+user.getuName());

            userArrayList.add(user);
        }
        //批量插入
        userMapper.insertInfoBatch( userArrayList);
        return "导入成功";
    }

    /**
     * 回显用户信息
     * @param user
     * @return
     */
    public User findUser(User user) {
        return userMapper.selectByPrimaryKey(user.getuId());
    }
}
