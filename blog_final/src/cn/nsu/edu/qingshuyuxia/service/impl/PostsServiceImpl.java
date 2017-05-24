package cn.nsu.edu.qingshuyuxia.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.nsu.edu.qingshuyuxia.mapper.PostsCustomMapper;
import cn.nsu.edu.qingshuyuxia.po.Posts;
import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.po.PostsCustomVo;
import cn.nsu.edu.qingshuyuxia.service.PostsService;

@Service
public class PostsServiceImpl implements PostsService{
	
	@Autowired
	private PostsCustomMapper postsCustomMapper;
	
	@Override
	public List<PostsCustom> findPostsByAuthorId(Integer id) throws Exception {
		
		List <PostsCustom> postsList= postsCustomMapper.findPostsByAuthorId(id);
		
		if(postsList != null){
			return postsList;
		}
		
		return null;
	}

	@Override
	public List<PostsCustom> findPostsHasPublished(PostsCustomVo postsCustomVo)
			throws Exception {
		//条件查询posts，是否发布
		List<PostsCustom> postsList = postsCustomMapper.findPostsHasPublished(postsCustomVo);
		if(postsList == null){
			return null;
		}
		return postsList;
	}
	
	/*
	 * pageNo 页面号 pageSize 页面大小
	 */
	@Override
	public PageInfo<PostsCustom> queryByPage(PostsCustom postsCustom, Integer pageNo,Integer pageSize) {
			pageNo = pageNo == null?1:pageNo;
			pageNo = pageNo == 0?1:pageNo;
			pageSize = pageSize == null? 3:pageSize;
			PageHelper.startPage(pageNo, pageSize);
			List<PostsCustom> list = postsCustomMapper.selectPostsByPostsCondition(postsCustom);
			for (PostsCustom ps : list) {
				System.out.println("PostsName:"+ps.getId()+ps.getPostsname());
			}
			//用PageInfo对结果进行包装
			PageInfo<PostsCustom> page = new PageInfo<PostsCustom>(list);
			System.out.println(page.toString());
			//为了页面点击下一页和上一页有第0页存在加逻辑，这里放在上面判断了
			/*if(page.getPrePage() == 0){
				page.setPrePage(1);
			}
			System.out.println(page.getTotal());
			if(page.getNextPage() == 0){//最后一页默认下一页为第0页
				page.setNextPage(1);
			}
			*/
			return page;
	}

	@Override
	public boolean publishPosts(PostsCustom postsCustom) throws Exception {
		// TODO Auto-generated method stub
		boolean published = postsCustomMapper.insertPosts(postsCustom);
		return published;
	}

	@Override
	public List<PostsCustom> queryPostsByPublished(PostsCustom postsCustom)
			throws Exception {
		//查询posts和mdName
		List<PostsCustom> postsList = postsCustomMapper.queryPostsByPublished(postsCustom);
		
		return postsList;
	}

	@Override
	public PostsCustom findPostsById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		PostsCustom postsCustom = postsCustomMapper.findPostsById(id);
		return postsCustom;
	}

	@Override
	public Boolean deletePostsBatch(Integer[] arrayId) throws Exception {
		// TODO Auto-generated method stub
		Boolean successBoolean = postsCustomMapper.deletePostsBatch(arrayId);
		return successBoolean;
	}

	@Override
	public List<PostsCustom> selectPostsByPostsCondition(PostsCustom postsCustom) throws Exception {
		List<PostsCustom> psList = postsCustomMapper.selectPostsByPostsCondition(postsCustom);
		return psList;
	}

	@Override
	public List<PostsCustom> selectPostsRadom(Integer[] arrayId) throws Exception {
		List<PostsCustom> psList = postsCustomMapper.selectPostsRadom(arrayId);
		return psList;
	}

	@Override
	public Integer getAllPostsNum() throws Exception {
		return postsCustomMapper.getAllPostsNum();
	}

	@Override
	public boolean updatePosts(PostsCustom postsCustom) throws Exception {
		return postsCustomMapper.updatePosts(postsCustom);
	}

}
