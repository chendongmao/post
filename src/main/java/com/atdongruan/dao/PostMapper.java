package com.atdongruan.dao;

import com.atdongruan.bean.Post;
import com.atdongruan.bean.PostExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PostMapper {
    long countByExample(PostExample example);

    int deleteByExample(PostExample example);

    int deleteByPrimaryKey(Integer pId);

    int insert(Post record);

    int insertSelective(Post record);

    List<Post> selectByExample(PostExample example);

    /**
     * 模糊查询的接口
     * @param
     * @return
     */

    List<Post>  readerSearchPost(Post record);

    Post selectByPrimaryKey(Integer pId);

    int updateByExampleSelective(@Param("record") Post record, @Param("example") PostExample example);

    int updateByExample(@Param("record") Post record, @Param("example") PostExample example);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
}