package cn.nsu.edu.qingshuyuxia.controller;

import cn.nsu.edu.qingshuyuxia.po.ArticleLabelCustom;
import cn.nsu.edu.qingshuyuxia.po.Module;
import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.service.ArticleLabelService;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;
import cn.nsu.edu.qingshuyuxia.service.PostsService;
import cn.nsu.edu.qingshuyuxia.tools.GetRandom;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

/**
 * Created by cocos on 2017/5/23.
 */
@Controller
public class IndexController {

    @Autowired
    private PostsService postsService;

    @Autowired
    private ModuleService moduleService;

    @Autowired
    private ArticleLabelService articleLabelService;

    //查询所有的posts使用分页,这个action是首页处理
    @RequestMapping("/index.action")
    public String viewPageHelper(Integer pageNum,Integer pageSize,Model model)throws Exception{

        System.out.println("pageNum"+pageNum);
        //主页的分页根据什么显示,postsCustom是查询条件
        PageInfo<PostsCustom> page = postsService.queryByPage(new PostsCustom(new Date()), pageNum, pageSize);
        //为了方便展示，这里将Label集合放在page中,先获取分页中的posts
        Integer arrayArticleId[]  = new Integer[10];
        int indexx = 0;
        for (PostsCustom ps : page.getList()) {
            arrayArticleId[indexx] = ps.getId();
            System.out.println("ID:"+ps.getId()+"  Controller——PostsName:"+ps.getPostsname());
            indexx++;
        }
        //文章的标签,传入数组
        List<ArticleLabelCustom> articleLabelCustomList = articleLabelService.findArticleLabel(arrayArticleId);
        /*for(ArticleLabelCustom articleLabelCustom : articleLabelCustomList){
            System.out.println("ID:"+articleLabelCustom.getArticleid()+"  文章："+articleLabelCustom.getPostsName());
            for (Label label :articleLabelCustom.getLabels()){
                System.out.println("Label："+label.getName());
            }
        }*/
        //对page中的postsCustom对label的包装进行填充
        for (PostsCustom ps : page.getList()) {
            for(ArticleLabelCustom articleLabelCustom : articleLabelCustomList){
                if(ps.getId() == articleLabelCustom.getArticleid()){
                    System.out.println("剩余Size():"+articleLabelCustomList.size());
                    ps.setLabelList(articleLabelCustom.getLabels());
                    articleLabelCustomList.remove(articleLabelCustom);
                    break;
                }
            }
        }
        /*for(PostsCustom ps : page.getList()){
        	if(ps.getLabelList() != null){
                for(Label label : ps.getLabelList()) {
                    if(label != null){
                        System.out.println("Controller中"+ps.getPostsname()+"有"+label.getName());
                    }
                }
            }
        }*/
        //主页的模块展示
        List<ModuleCustom> mdList = moduleService.findAllModule();
        for (ModuleCustom moduleCustom : mdList){
            System.out.println("一级模块>"+moduleCustom.getMdname()+":"+moduleCustom.getPostsNum());
            for (Module module : moduleCustom.getTwoMdList()){
                System.out.println("二级模块>"+module.getMdname()+":"+moduleCustom.getPostsNum());
            }
        }
        //主页推荐版块 最新 最热 随机在，这里只是获取posts名称
        List<PostsCustom> psListACCreateTime = null;
        List<PostsCustom> psListACHot = null;
        List<PostsCustom> psListACRandom = null;
        //最新
        PostsCustom psACCreateTime = new PostsCustom(new Date());
        psACCreateTime.setSelectnum(6);//查询 6 条数据
        psListACCreateTime = postsService.selectPostsByPostsCondition(psACCreateTime);
        //最热
        PostsCustom psACHot = new PostsCustom(1);
        psACHot.setSelectnum(6);
        psListACHot = postsService.selectPostsByPostsCondition(psACHot);
        //随机,生成随机数数组
        Integer[] arrayId ;
        Integer postsNum = postsService.getAllPostsNum();
        System.out.println("总数"+postsNum);
        if (postsNum < 6){
            psListACRandom = postsService.selectPostsByPostsCondition(null);
        } else {
            arrayId = GetRandom.getRandom(postsNum,6);
            psListACRandom = postsService.selectPostsRadom(arrayId);
        }
        //填充页面分页信息
        model.addAttribute("page", page);
        //填充页面的模块信息
        model.addAttribute("mdList",mdList);
        //填充文章标签
        model.addAttribute("articleLabelCustomList",articleLabelCustomList);
        //填充页面最新 最热 随机 推荐板块
        model.addAttribute("psListACCreateTime",psListACCreateTime);
        model.addAttribute("psListACHot",psListACHot);
        model.addAttribute("psListACRandom",psListACRandom);

        return "index";
    }
}
