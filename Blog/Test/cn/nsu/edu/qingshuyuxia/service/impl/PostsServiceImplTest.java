package cn.nsu.edu.qingshuyuxia.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.service.PostsService;
import baseTest.SpringTestCase;

public class PostsServiceImplTest extends SpringTestCase{

	@Autowired
	private PostsService postsService;
	
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void testQueryPostsByPublished() throws Exception {
		//定义一个查询条件的postsCustom
		PostsCustom postsCustom = new PostsCustom();
		postsCustom.setPostsauthorid(1);
		postsCustom.setPostsIsPublished(true);
		List<PostsCustom> pList = postsService.queryPostsByPublished(postsCustom);
	
		for (PostsCustom p : pList) {
			System.out.println(p.getPostsname());
		}
	}

}
