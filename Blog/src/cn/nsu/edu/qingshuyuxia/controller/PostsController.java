package cn.nsu.edu.qingshuyuxia.controller;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;

import cn.nsu.edu.qingshuyuxia.po.*;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;
import cn.nsu.edu.qingshuyuxia.service.PostsService;
import cn.nsu.edu.qingshuyuxia.tools.UploadUtil;


@Controller
@RequestMapping(value = "/posts")
public class PostsController {
	
	@Autowired
	PostsService postsService;
	
	@Autowired
	ModuleService moduleService;
	
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
			@RequestParam(value = "postsCoverPic", required = false) MultipartFile[] file,String postscontent,
			String postsTitle, Integer postsWhereMd,String buttonType, HttpSession session) throws Exception{
		System.out.println(file[0].getOriginalFilename()+postsTitle+postsWhereMd+buttonType+postscontent);
		String[] imgUrl = null;
		//这是封面图片
		imgUrl = UploadUtil.uploadImage(null, file);
	
		//获取当前session中的id
		Integer id = (Integer) session.getAttribute("userId");
		//判断当前点击是发布还是存为草稿
		Boolean isPublished = buttonType == "published"? true:false;
		//获取当前时间
		Date date = new Date();
		//构建postsCustom插入数据
		PostsCustom postsCustom = new PostsCustom();
		postsCustom.setPostsname(postsTitle);
		postsCustom.setPostspic(imgUrl[0]);
		postsCustom.setPostsauthorid(id);
		postsCustom.setWheremd(postsWhereMd);
		postsCustom.setPostscreatetime(date);
		postsCustom.setPostsIsPublished(isPublished);
		postsCustom.setPostscontent(postscontent);
        postsCustom.setMdlevel(1);
		//调用service
		boolean PDsuccess =  postsService.publishPosts(postsCustom);
		if(PDsuccess){
			return imgUrl;
		}else{
			return null;
		}
	}
	
	//查询所有的posts使用分页,这个action是首页处理
	@RequestMapping("/index.action")
	public String viewPageHelper(Integer pageNum,Model model)throws Exception{
		
		System.out.println("pageNum"+pageNum);
		//主页的分页根据什么显示,postsCustom是查询条件
		//1.最热posts展示

		//2.随机posts展示

		//3.最新posts展示,随便传一个日期
		PageInfo<PostsCustom> page = postsService.queryByPage(new PostsCustom(new Date()), pageNum, 1);

		//主页的模块展示
        List<ModuleCustom> mdList = moduleService.findAllModule();

        //主页推荐版块 最新 最热 随机在，这里只是获取posts名称
		List<PostsCustom> psListACCreateTime = null;
		List<PostsCustom> psListACHot = null;
		List<PostsCustom> psListACRandom = null;
		//最新
		psListACCreateTime = postsService.selectPostsByPostsCondition(new PostsCustom(new Date()));
		//最热
		psListACHot = postsService.selectPostsByPostsCondition(new PostsCustom(1));
		//随机,生成随机数数组
		Integer[] arrayId = new Integer[5];
		Integer postsNum = postsService.getAllPostsNum();
		System.out.println("总数"+postsNum);
		if(postsNum == 0){
			psListACRandom = null;
		}else if (postsNum < 6){
			psListACRandom = postsService.selectPostsByPostsCondition(null);
		} else {
			for (int i = 0; i < 5; i++) {
				//产生0-(x-1)闭区间随机数int
				Integer temp = (new Random()).nextInt(postsNum)+1;
				System.out.println("temp:"+temp);
				boolean s = false;
				for (int j = 0; j < i; j++) {
					if(temp == arrayId[j]){
						i = i - 1;
						s = true;
						break;
					}
				}
				if (!s){
					arrayId[i] = temp;
				}
			}
			for (int i = 0; i < 5; i++) {
				System.out.println(arrayId[i]);
			}
			psListACRandom = postsService.selectPostsRadom(arrayId);
		}
		//填充页面分页信息
		model.addAttribute("page", page);
		//填充页面的模块信息
		model.addAttribute("mdList",mdList);
		//填充页面最新 最热 随机 推荐板块
		model.addAttribute("psListACCreateTime",psListACCreateTime);
		model.addAttribute("psListACHot",psListACHot);
		model.addAttribute("psListACRandom",psListACRandom);

		return "index";
	}
	
	@RequestMapping("viewAllPosts.action")
	public String viewAllPosts(Model model,HttpSession session)throws Exception{
		
		//获取当前管理员id
		Integer id = (Integer) session.getAttribute("userId");
		//自定义一个postsCustom
		PostsCustom postsCustom = new PostsCustom();
		//填充查询数据，这里查询所有
		postsCustom.setPostsauthorid(id);
		//调用service
		List<PostsCustom> postsList = postsService.queryPostsByPublished(postsCustom);
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
