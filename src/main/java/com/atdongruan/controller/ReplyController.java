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

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/8/21 0021.
 */
@Controller
public class ReplyController {
    @Autowired
    ReplyService replyService;
    @Autowired
    PostService postService;

    /**
     * 发表帖子
     * @param request
     * @param reply
     * @return
     */
    @RequestMapping("/reply")
    public String creatReply(HttpServletRequest request, Reply reply){
        reply.setrTime(new Date());
        Reply reply1=new Reply();
        System.out.println("帖子id"+reply.getrId()+"用户ID"+reply.getuId());
       replyService.creatRply(reply);
        return "Users/success";
    }
    /**++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
     * 新添加的模板页面
     * 回复帖子
     * @param reply
     * @return
     */
    @RequestMapping("/newReply")
    public String newReply(Model model, Reply reply){
        PageHelper.startPage(1,5);
        reply.setrTime(new Date());
        replyService.creatRply(reply);
        List<Reply> reply1 = replyService.searchReply(reply);
        PageInfo page = new PageInfo(reply1, 5);
        Post post = postService.noAddClickFindPost(reply.getpId());
        model.addAttribute("pageInfo", page);
        model.addAttribute("post",post);
        return "Post/searchPost";

    }
}
