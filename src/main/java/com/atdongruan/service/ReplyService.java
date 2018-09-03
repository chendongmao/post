package com.atdongruan.service;
import com.atdongruan.bean.Reply;
import com.atdongruan.dao.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyService {
@Autowired
ReplyMapper replyMapper;

    public void creatRply(Reply reply) {
        replyMapper.insertSelective(reply);
    }



    public List<Reply> searchReply(Reply reply){
        return  replyMapper.searchReply(reply);
    }


}
