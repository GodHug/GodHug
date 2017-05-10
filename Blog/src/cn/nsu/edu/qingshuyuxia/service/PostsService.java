package cn.nsu.edu.qingshuyuxia.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.po.PostsCustomVo;

public interface PostsService{
	//根据id查找一条posts
	public PostsCustom findPostsById(Integer id)throws Exception;
	//根据作者查询Posts
	public List<PostsCustom> findPostsByAuthorId(Integer id)throws Exception;
	//条件查询posts，是否发布
	public List<PostsCustom> findPostsHasPublished(PostsCustomVo postsCustomVo)throws Exception;

	PageInfo<PostsCustom> queryByPage(PostsCustom postsCustom,Integer pageNo,Integer pageSize);
	//发布
	public boolean publishPosts(PostsCustom postsCustom)throws Exception;
	//查询posts和mdName
	public List<PostsCustom> queryPostsByPublished(PostsCustom postsCustom)throws Exception;
	//根据id删除posts，可以批量删除
	public Boolean deletePostsBatch(Integer[] arrayId)throws Exception;
	//根据条件查询posts
	public List<PostsCustom> selectPostsByPostsCondition(PostsCustom postsCustom)throws Exception;
	//根据随机id查询posts集合
	public List<PostsCustom> selectPostsRadom(Integer[] arrayId)throws Exception;
	//获得posts总数
	public Integer getAllPostsNum()throws  Exception;
}	
