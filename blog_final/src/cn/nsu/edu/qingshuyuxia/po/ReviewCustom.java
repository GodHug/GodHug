package cn.nsu.edu.qingshuyuxia.po;

import java.util.List;

/**
 * Created by cocos on 2017/2/14.
 */
public class ReviewCustom extends Review{
    //一篇文章的所有评论
    private List<ReviewCustom> reviewNextList;

    public List<ReviewCustom> getReviewNextList() {
        return reviewNextList;
    }

    public void setReviewNextList(List<ReviewCustom> reviewNextList) {
        this.reviewNextList = reviewNextList;
    }
}
