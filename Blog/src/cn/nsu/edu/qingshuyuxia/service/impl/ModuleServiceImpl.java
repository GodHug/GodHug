package cn.nsu.edu.qingshuyuxia.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.nsu.edu.qingshuyuxia.mapper.ModuleCustomMapper;
import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;

@Service
public class ModuleServiceImpl implements ModuleService{

	@Autowired
	ModuleCustomMapper moduleCustomMapper;
	
	@Override
	public String findModuleNameById(Integer id) throws Exception {
		
		// 根据模块id查模块名字
		String mdName = moduleCustomMapper.findModuleNameById(id);
		
		return mdName;
	}

	@Override
	public List<ModuleCustom> findAllModule() throws Exception {
		// TODO Auto-generated method stub
		List<ModuleCustom> moduleList = moduleCustomMapper.findAllModule();
		return moduleList;
	}
	
}
