package cn.nsu.edu.qingshuyuxia.service;

import cn.nsu.edu.qingshuyuxia.po.ReviewCustom;

import java.util.List;

/**
 * Created by cocos on 2017/2/15.
 */
public interface ReviewService {
    //获取单个文章的所有评论
    public List<ReviewCustom> findAllReviewByArticleId(Integer articleId)throws Exception;
    //获取最新的评论
    public List<ReviewCustom> getRecentReview()throws Exception;
}
