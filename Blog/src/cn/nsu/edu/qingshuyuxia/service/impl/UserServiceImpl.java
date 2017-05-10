package cn.nsu.edu.qingshuyuxia.service.impl;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.nsu.edu.qingshuyuxia.mapper.UserCustomMapper;
import cn.nsu.edu.qingshuyuxia.mapper.UserMapper;
import cn.nsu.edu.qingshuyuxia.po.User;
import cn.nsu.edu.qingshuyuxia.po.UserCustom;
import cn.nsu.edu.qingshuyuxia.service.UserService;

/*
 *  @Service 负责注册一个bean 到spring 上下文中，
 * 	bean 的ID 默认为类名称开头字母小写
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserCustomMapper userCustomMapper;
	
	@Override
	public UserCustom findUserById(Integer id) throws Exception {
		
		//查找user数据库
		User user = userMapper.selectByPrimaryKey(id);
		
		//返回UserCustom
		UserCustom userCustom = null;
		
		if(user != null){
			//userCustom不能是null的,必须是个对象
			userCustom= new UserCustom();
			//将user的属性值拷贝到userCustom
			BeanUtils.copyProperties(user, userCustom);
		}
		
		return userCustom;
	}

	@Override
	public UserCustom findUserByName(String userName) throws Exception {
		// TODO Auto-generated method stub
		
		//根据自定义mapper查询
		UserCustom userCustom = userCustomMapper.findUserByName(userName);
		//System.out.println("存在？"+userCustom.getUsername());
		
		return userCustom;
	}

}
