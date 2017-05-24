package cn.nsu.edu.qingshuyuxia.service.impl;

import cn.nsu.edu.qingshuyuxia.mapper.ArticleLabelCustomMapper;
import cn.nsu.edu.qingshuyuxia.po.ArticleLabelCustom;
import cn.nsu.edu.qingshuyuxia.service.ArticleLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * Created by cocos on 2017/2/21.
 */
@Service
public class ArticleLabelServiceImpl implements ArticleLabelService {

    @Autowired
    private ArticleLabelCustomMapper articleLabelCustomMapper;

    @Override
    public List<ArticleLabelCustom> findArticleLabel(Integer arrayArticleId[]) throws Exception {
        return articleLabelCustomMapper.findArticleLabel(arrayArticleId);
    }
}
