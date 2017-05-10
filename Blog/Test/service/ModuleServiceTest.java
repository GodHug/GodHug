package service;

import baseTest.SpringTestCase;
import cn.nsu.edu.qingshuyuxia.po.Module;
import cn.nsu.edu.qingshuyuxia.po.ModuleCustom;
import cn.nsu.edu.qingshuyuxia.service.ModuleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by cocos on 2017/1/8.
 */
public class ModuleServiceTest extends SpringTestCase {
    @Autowired
    private ModuleService moduleService;

    @Test
    public void findAllModuleTest() throws  Exception{
        List<ModuleCustom> list = moduleService.findAllModule();
        for (ModuleCustom moduleCustom : list){
            System.out.println(moduleCustom.getMdname());
            for (Module module : moduleCustom.getTwoMdList()){
                System.out.print(module.getMdname());
            }
        }
    }
}
