package cn.nsu.edu.qingshuyuxia.tools;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class UploadUtil {
	public static String[] uploadImage(String serverPath, MultipartFile[] files) {
		
		//初始化数组
		String newPicPathList[] = new String[files.length];
		
		try {
			if (files != null && files.length > 0) {
				for (int i = 0; i < files.length; i++) {
					
					MultipartFile file = files[i];
					//获取原始图片的名称
					String pic_originalName = file.getOriginalFilename();
					
					if(file != null && pic_originalName != null && pic_originalName.length()>0){
						//图片的存储路径
						String pic_path = "D:\\ApacheTomcat\\apache-tomcat-8.0.39\\pic\\postsPic\\";
						//获取原始图片后缀
						String pic_suffix = pic_originalName.substring(pic_originalName.lastIndexOf("."));
						//新的图片名称
						String newPicName = UUID.randomUUID() + pic_suffix;
						//图片路径
						String newPicPath = "\\pic\\postsPic\\"+newPicName;
						//加入集合
						newPicPathList[i] = newPicPath; 
						//新的图片
						File newPicFile = new File(pic_path+newPicName);
						//将内存中的数据写入磁盘
						file.transferTo(newPicFile);
						System.out.println("写入磁盘成功");
					}
				}
			}
			return newPicPathList;
		} catch (Exception e) {
			
			e.printStackTrace();
			return null;
		}
	}
}
