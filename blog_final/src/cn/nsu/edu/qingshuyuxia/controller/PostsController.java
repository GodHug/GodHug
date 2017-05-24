package cn.nsu.edu.qingshuyuxia.controller;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import cn.nsu.edu.qingshuyuxia.service.ReviewService;
import cn.nsu.edu.qingshuyuxia.tools.GetRandom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import cn.nsu.edu.qingshuyuxia.po.*;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;
import cn.nsu.edu.qingshuyuxia.service.PostsService;


@Controller
@RequestMapping(value = "/posts")
public class PostsController {
	
	@Autowired
	private PostsService postsService;
	
	@Autowired
	private ModuleService moduleService;

	@Autowired
	private ReviewService reviewService;

	//进入posts的详情
	@RequestMapping("/viewActile.action")
	public String viewAticle(Integer id,Model model)throws Exception{

		//posts的信息
        PostsCustom postsCustom = postsService.findPostsById(id);

		//获取所有评论
		List<ReviewCustom> articleAllReviewList = reviewService.findAllReviewByArticleId(id);
        for(ReviewCustom reviewCustom : articleAllReviewList){
            System.out.println("评论一："+reviewCustom.getReviewcontent());
            for (ReviewCustom reviewCustom1 :reviewCustom.getReviewNextList()){
                System.out.println("评论二："+reviewCustom1.getReviewcontent());
            }
        }
		//获取最新评论
		List<ReviewCustom> recentReviewList = reviewService.getRecentReview();

        //主页的模块展示
        List<ModuleCustom> mdList = moduleService.findAllModule();

        //上一篇和下一篇
        PostsCustom psLast = postsService.findPostsById(id-1);
        PostsCustom psNext = postsService.findPostsById(id+1);

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
        if (postsNum < 6){
			psListACRandom = postsService.selectPostsByPostsCondition(null);
		} else {
			arrayId = GetRandom.getRandom(postsNum,6);
			psListACRandom = postsService.selectPostsRadom(arrayId);
		}

        //posts信息
        model.addAttribute("posts",postsCustom);
		//评论信息
        model.addAttribute("articleAllReviewList",articleAllReviewList);
        //最新评论
        model.addAttribute("recentReviewList",recentReviewList);
		//上一篇和下一篇
        model.addAttribute("postsLast",psLast);
        model.addAttribute("postsNext",psNext);
        //主页的模块展示
        model.addAttribute("mdList",mdList);
        //填充页面最新 最热 随机 推荐板块
        model.addAttribute("psListACCreateTime",psListACCreateTime);
        model.addAttribute("psListACHot",psListACHot);
        model.addAttribute("psListACRandom",psListACRandom);
        //
		return "viewAticle";
	}

	//删除posts
	@ResponseBody
	@RequestMapping("/delePosts.action")
	public Boolean delePosts(Integer[] arrayId)throws Exception{
		System.out.println("arrayId"+arrayId);
		Boolean successBoolean = postsService.deletePostsBatch(arrayId);
		return successBoolean;
	}

	@RequestMapping("/editPage.action")
	public String returnEditPage(Integer id,Model model) throws Exception{
		System.out.println("id"+id);
        //如果为null就是发布，否则编辑
        PostsCustom postsCustom = null;
		if(id != null){
            //根据id查找posts
            postsCustom = postsService.findPostsById(id);
            System.out.println("mdName:"+postsCustom.getPostsmdname());
            model.addAttribute("postsCustom", postsCustom);
            //System.out.println(postsCustom.toString());
			return "admin/editPosts";
        }else{
			//本来打算编辑和发布用同一个页面，但是有冲突就另外稍微改动了下用另外的jsp
		    return "admin/publishPosts";
        }
	}
	
	
	//editPostsForm处理
	@ResponseBody
	@RequestMapping("/editPostsSubmit.action")
	public String[] editPosts(
	        PostsCustom psCustom, //获取posts信息
            @RequestParam(value = "postsCoverPic", required = false) MultipartFile[] file,//获取封面图片
			Integer postsWhereTwoMd,//获取二级模块信息
            String buttonType,//是提交还是存草稿
            String twoMdName,//获取二级模块的名字
            HttpSession session) throws Exception{
	    System.out.println(psCustom.toString());
		String[] imgUrl = null;

		//获取当前session中的id
		Integer id = (Integer) session.getAttribute("userId");
		//判断当前点击是发布还是存为草稿，注意这里不能用==符号判断
		Boolean isPublished = buttonType.equals("published")?true:false;
		System.out.println(buttonType+isPublished);

		if(postsWhereTwoMd != null){
            psCustom.setWheremd(postsWhereTwoMd);
			psCustom.setMdlevel(2);
			//psCustom.setMdName();
		}
/*		//调用service
		boolean PDsuccess = postsService.updatePosts(psCustom);

		if(PDsuccess){
            //这是封面图片
            imgUrl = UploadUtil.uploadImage(null, file);
			return imgUrl;

		}else{
			return null;
		}*/
		return  null;
	}
	
	@RequestMapping("viewAllPosts.action")
	public String viewAllPosts(Model model,HttpSession session)throws Exception{

	    System.out.println("进入浏览后台浏览全部帖子!-----------------------------------------------------------------------");
		//获取当前管理员id
		Integer id = (Integer) session.getAttribute("userId");
		//自定义一个postsCustom
		PostsCustom postsCustom = new PostsCustom();
		//填充查询数据，这里查询所有
		postsCustom.setPostsauthorid(id);
		//调用service
		List<PostsCustom> postsList = postsService.queryPostsByPublished(postsCustom);
        System.out.println("帖子数量:"+postsList.size()+"作者ID:"+id+"-----------------------------------------------------------------------");
		model.addAttribute("postsList", postsList);
		
		return "admin/viewAllPosts";
	}
	
	@RequestMapping(value="publishedPosts.action", method=RequestMethod.POST, consumes="application/json")
	public @ResponseBody List<PostsCustom> getPublishedPosts(@RequestBody SomBod somBod,Model model,HttpSession session)throws Exception{
		
		//自定义一个postsCustom
		PostsCustom postsCustom = new PostsCustom();
		//填充查询数据，这里查询所有
		postsCustom.setPostsauthorid((Integer)session.getAttribute("userId"));
		//如果值为1表示全部posts
		if(somBod.getNumber() == 1){
			postsCustom.setPostsIsPublished(null);
		}else if(somBod.getNumber() == 2){
			postsCustom.setPostsIsPublished(true);
		}else if(somBod.getNumber() == 3){
			postsCustom.setPostsIsPublished(false);
		}else{
			System.out.println("name的值没有传过来");
		}
			
		//调用service
		List<PostsCustom> postsList = postsService.queryPostsByPublished(postsCustom);
		for (PostsCustom postsCustom2 : postsList) {
			System.out.println("内容"+postsCustom2.getPostscontent());
		}
		if(postsList != null){
			
			//如果不为空就传到页面
			return postsList;
		}
		return null;
	}
}
