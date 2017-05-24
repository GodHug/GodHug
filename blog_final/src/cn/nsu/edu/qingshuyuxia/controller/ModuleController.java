package cn.nsu.edu.qingshuyuxia.controller;

import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by cocos on 2017/1/11.
 */
@Controller
@RequestMapping("/module")
public class ModuleController {

    @Autowired
    private ModuleService moduleService;

    //通过选择父模块，来通过此action加载子模块
    @RequestMapping("/getModule.action")
    @ResponseBody
    public List<ModuleCustom> getModule()throws Exception{
        List<ModuleCustom> mdList = moduleService.findAllModule();
        return mdList;
    }
}
