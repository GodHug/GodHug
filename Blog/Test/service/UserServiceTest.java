package service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import baseTest.SpringTestCase;
import cn.nsu.edu.qingshuyuxia.po.PostsCustom;
import cn.nsu.edu.qingshuyuxia.service.PostsService;

import com.github.pagehelper.PageInfo;
public class UserServiceTest extends SpringTestCase {
	
	//自动装配
	@Autowired
    private PostsService postsService; 
	
	@Test
    public void queryByPageTest(){  
        PageInfo<PostsCustom> page =  postsService.queryByPage(null,2,1);
        System.out.println(page);
    }
	
}
