package cn.nsu.edu.qingshuyuxia.service;

import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.po.ModuleCustomVo;

import java.util.List;

public interface ModuleService {
    //根据id查模块名字
    public String findModuleNameById(Integer id) throws Exception;

    //查询所有的模块根据id或者名字
    public List<ModuleCustom> findAllModule() throws Exception;
}
