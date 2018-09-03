package com.atdongruan.dao;

import com.atdongruan.bean.User;
import com.atdongruan.bean.UserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer uId);

    /**
     * 后台模糊查询用户
     * @param record
     * @return
     */
    List<User> ManagerSearchUser(User record);

    int insert(User record);

    int insertSelective(User record);
     //用户登录
     //User findByUsername(String username);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer uId);
    /**
     * 插入excel表
     */
    int   insertInfoBatch(List<User> userArrayList) ;

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByUserExample(UserExample example);
}