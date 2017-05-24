package cn.nsu.edu.qingshuyuxia.service;

import cn.nsu.edu.qingshuyuxia.po.ArticleLabelCustom;

import java.util.List;

/**
 * Created by cocos on 2017/2/20.
 */
public interface ArticleLabelService {
    //获得单篇文章的标签
    public List<ArticleLabelCustom> findArticleLabel(Integer arrayArticleId[])throws Exception;
}
