package cn.nsu.edu.qingshuyuxia.service;

import cn.nsu.edu.qingshuyuxia.po.UserCustom;

public interface UserService {
	
	//查询用户根据id
	public UserCustom findUserById(Integer id)throws Exception;
	//根据用户昵称查信息
	public UserCustom findUserByName(String userName)throws Exception;
	
}
