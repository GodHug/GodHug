package cn.nsu.edu.qingshuyuxia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.po.PostsCustomVo;

public interface PostsCustomMapper {
	//根据id查找一条posts
	public PostsCustom findPostsById(@Param(value = "id") Integer id)throws Exception;
	
	//根据作者查询Posts
	public List<PostsCustom> findPostsByAuthorId(Integer postsauthorid) throws Exception;
	
	//条件查询posts，是否发布
	public List<PostsCustom> findPostsHasPublished(PostsCustomVo postsCustomVo)throws Exception;
	
	public List<PostsCustom> selectPostsByPostsCondition(PostsCustom postsCustom);
	
	//插入一条posts数据
	public boolean insertPosts(PostsCustom postsCustom)throws Exception;
	
	//查询posts和mdName
	public List<PostsCustom> queryPostsByPublished(PostsCustom postsCustom)throws Exception;

	//根据id删除posts，可以批量删除
	public Boolean deletePostsBatch(Integer[] arrayId)throws Exception;

	//根据随机id查询posts集合
	public List<PostsCustom> selectPostsRadom(Integer[] arrayId)throws Exception;

	//获得posts总数
    public Integer getAllPostsNum()throws  Exception;
}