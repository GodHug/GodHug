package baseTest;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;  
/*
 * spring4 不支持junit4.4
 * junit4.12 4.11 另外需要hamcrest-core-1.3.jar
 * @ContextConfiguration加载配置文件
 * @RunWith运行在spring环境中
 */
@ContextConfiguration(locations = {"classpath*:/spring/applicationContext-dao.xml","classpath*:/spring/applicationContext-service.xml" })  
@RunWith(SpringJUnit4ClassRunner.class) 
public class SpringTestCase extends AbstractJUnit4SpringContextTests {
	
}
