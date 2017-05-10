package cn.nsu.edu.qingshuyuxia.po;

import java.util.List;

public class ModuleCustom extends Module{
    //模块下面有多少的posts
    private Integer postsNum;
    //模块下面的二级模块
    private List<Module> twoMdList;

    public List<Module> getTwoMdList() {
        return twoMdList;
    }

    public void setPostsNum(Integer postsNum) {
        this.postsNum = postsNum;
    }

    public Integer getPostsNum() {
        return postsNum;
    }

    public void setTwoMdList(List<Module> twoMdList) {
        this.twoMdList = twoMdList;
    }
}
