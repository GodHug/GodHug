package cn.nsu.edu.qingshuyuxia.mapper;

import cn.nsu.edu.qingshuyuxia.po.UserCustom;

public interface UserCustomMapper {
	
	//根据用户昵称查找用户
	public UserCustom findUserByName(String userName)throws Exception;
}
