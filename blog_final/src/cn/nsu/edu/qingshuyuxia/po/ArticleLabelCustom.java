package cn.nsu.edu.qingshuyuxia.po;

import java.awt.*;
import java.util.List;

/**
 * Created by cocos on 2017/2/21.
 */
public class ArticleLabelCustom extends ArticleLabel {
    //postsName
    private String postsName;
    //Label集合
    private List<Label> labels;

    public String getPostsName() {
        return postsName;
    }

    public void setPostsName(String postsName) {
        this.postsName = postsName;
    }

    public List<Label> getLabels() {
        return labels;
    }

    public void setLabels(List<Label> labels) {
        this.labels = labels;
    }
}
