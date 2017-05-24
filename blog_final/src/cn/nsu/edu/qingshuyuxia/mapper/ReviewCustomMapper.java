package cn.nsu.edu.qingshuyuxia.mapper;

import cn.nsu.edu.qingshuyuxia.po.ReviewCustom;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by cocos on 2017/2/14.
 */
public interface ReviewCustomMapper {
    //获得文章所有评论
    public List<ReviewCustom> findAllReview(Integer articleId)throws Exception;
    //获取最新的评论
    public List<ReviewCustom> getRecentReview()throws Exception;
}
