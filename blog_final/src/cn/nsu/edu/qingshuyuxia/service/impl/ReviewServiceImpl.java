package cn.nsu.edu.qingshuyuxia.service.impl;

import cn.nsu.edu.qingshuyuxia.mapper.ReviewCustomMapper;
import cn.nsu.edu.qingshuyuxia.po.ReviewCustom;
import cn.nsu.edu.qingshuyuxia.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by cocos on 2017/2/15.
 */
@Service
public class ReviewServiceImpl implements ReviewService{

    @Autowired
    private ReviewCustomMapper reviewCustomMapper;

    //获取单个文章的所有评论
    @Override
    public List<ReviewCustom> findAllReviewByArticleId(Integer articleId) throws Exception {
        List<ReviewCustom> reviewCustomList = reviewCustomMapper.findAllReview(articleId);
        return reviewCustomList;
    }

    @Override
    public List<ReviewCustom> getRecentReview() throws Exception {
        return reviewCustomMapper.getRecentReview();
    }
}
