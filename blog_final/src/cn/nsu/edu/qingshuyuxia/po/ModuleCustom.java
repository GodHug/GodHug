package cn.nsu.edu.qingshuyuxia.po;

import java.util.List;

public class ModuleCustom extends Module{
    //模块下面有多少的posts
    private Integer postsNum;
    //模块下面的二级模块
    private List<ModuleCustom> twoMdList;

    public Integer getPostsNum() {
        return postsNum;
    }

    public void setPostsNum(Integer postsNum) {
        this.postsNum = postsNum;
    }

    public List<ModuleCustom> getTwoMdList() {
        return twoMdList;
    }

    public void setTwoMdList(List<ModuleCustom> twoMdList) {
        this.twoMdList = twoMdList;
    }
}
