package com.atdongruan.controller;
import com.atdongruan.bean.Post;
import com.atdongruan.bean.Reply;
import com.atdongruan.service.PostService;
import com.atdongruan.service.ReplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
public class PostController {

    Post post=new Post();

    @Autowired
    PostService postService;

    /**
     * 新建帖子
     * @param request
     * @param post
     * @return
     */
    @RequestMapping("/creatPost")
    public String ceratPost(HttpServletRequest request, Post post ){
        System.out.print("返回值  "+post.getPuId());
        post.setpTime(new Date());
        post.setpClick(0);
        int a= postService.creatPost(post);
        request.setAttribute("post",post);
        return "Users/success";
    }

/**
 *     查询分页
 */
    @RequestMapping("/searchPost")
	public String getSearchPost
       (@RequestParam(value = "pn", defaultValue = "1") Integer pn ,
        Model model)
{
           PageHelper.startPage(pn,5);
            List<Post> emp = postService.getAll();
            PageInfo page = new PageInfo(emp, 5);
            model.addAttribute("pageInfo", page);
            return "Users/postList";
	}



    /**+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     * 用户本人帖子的管理
     *  删除帖子
     */
    @RequestMapping("/toDelete")
    public String todelete(@RequestParam(value = "pId") Integer pId , Model model){
        postService.toDelete(pId);
        return "Users/postList";
    }


/**
 *  查询帖子
 */

    @RequestMapping("/toSearch")
    public String toSearch ( @RequestParam(value = "pId") Integer pId , Model model){
        model.addAttribute("post",postService.find(pId));
        return "Users/find";
    }

    /**
     *  查询我的帖子显示页面
     */
    @RequestMapping("/searchMyPost")
    public String searchPost ( @RequestParam(value = "pId") Integer pId , Model model){
        model.addAttribute("post",postService.find(pId));
        return "Post/searchPost";
    }


/**
 * 回显帖子内容
 */

@RequestMapping("/forEdit")
public String forEdit (@RequestParam(value = "pId") Integer pId , Model model){
    model.addAttribute("post", postService.forEdit(pId));
    return "Users/edit";
}


    /**
     *    修改帖子
     */

    @RequestMapping("/toEdit")
    public String forEdit(HttpServletRequest request, Post post ){
        System.out.print("返回值主键"+post.getpId());
        int a= postService.toEdit(post);
        System.out.print("返回值"+post.getPuId());
        return "Users/postList";
    }

    /**++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     * 新添加的模板页面
     * 未登录的用户查询
     * @param pn
     * @param post
     * @param model
     * @return
     */
    @RequestMapping("/readerSearchPost")
    public String readerSearchPost
            (@RequestParam(value = "pn", defaultValue = "1") Integer pn , Post post ,Model model)
    {
        System.out.println(post.getpTitle());
        PageHelper.startPage(pn,5);
        List<Post> emp = postService.readerSearchPost(post);
        PageInfo page = new PageInfo(emp, 5);
        System.out.println(page.getSize());
        model.addAttribute("pageInfo", page);
        return "Users/main";
    }
    /**
     * 我的帖子
     */
    @RequestMapping("/myPost")
    public String myPost
    (@RequestParam(value = "pn", defaultValue = "1") Integer pn ,
     Model model)
    {
        PageHelper.startPage(pn,5);
        List<Post> emp = postService.getAll();
        PageInfo page = new PageInfo(emp, 5);
        model.addAttribute("pageInfo", page);
        return "Post/myPost";
    }

    /**
     * 读者查询
     * @return
     */
    @Autowired
    ReplyService replyService;
    @RequestMapping("/searchReaderPost")
    public String searchReaderPost(Post post, Model model){
        Reply reply= new Reply();
        reply.setpId(post.getpId());
        PageHelper.startPage(1,5);
        List<Reply> reply1 = replyService.searchReply(reply);
        PageInfo page = new PageInfo(reply1, 5);
        Post post1 = postService.noAddClickFindPost(post.getpId());
        model.addAttribute("pageInfo", page);
        model.addAttribute("post",post1);
        return "Post/readerPost";
    }

}
