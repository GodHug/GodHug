package cn.nsu.edu.qingshuyuxia.mapper;

import java.util.List;

import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.po.ModuleCustomVo;
import cn.nsu.edu.qingshuyuxia.po.PostsCustom;

public interface ModuleCustomMapper {
	//根据id查模块名字
	public String findModuleNameById(Integer id)throws Exception;
	//查询所有的模块根据id或者名字
	public List<ModuleCustom> findAllModule()throws Exception;
}
