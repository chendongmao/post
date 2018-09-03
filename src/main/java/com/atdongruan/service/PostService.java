package com.atdongruan.service;

import com.atdongruan.bean.Post;
import com.atdongruan.dao.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/8/10 0010.
 */
@Service
public class PostService {


    @Autowired
    PostMapper postMapper;

    // 创建帖子
    public int creatPost( Post post){
        postMapper.insertSelective(post);
        return 1;
    }
    //分页查询
    public  List<Post>  getAll() {
        return   postMapper.selectByExample(null);
	}
    //删除帖子
    public void  toDelete(Integer pId){
       postMapper.deleteByPrimaryKey(pId);
    }
      //查看帖子
     public Post find(Integer pId){
         Post posts =postMapper.selectByPrimaryKey(pId);
         posts.setpClick(posts.getpClick()+1);
         postMapper.updateByPrimaryKey(posts);
         return postMapper.selectByPrimaryKey(pId);
    }
      //回显贴子内容
     public  Post forEdit(Integer pId){
        return postMapper.selectByPrimaryKey(pId);
    }
      //修改帖子内容
    public Integer  toEdit(Post post){
        return postMapper.updateByPrimaryKeySelective(post);
    }

    /**
     * 添加评论后，没有增加点击量的查帖子
     * @param pId
     * @return
     */
    public Post noAddClickFindPost(Integer pId) {
        Post post = postMapper.selectByPrimaryKey(pId);
        return post;
    }

    public List<Post> readerSearchPost(Post post) {
        return postMapper.readerSearchPost(post);
    }
}
