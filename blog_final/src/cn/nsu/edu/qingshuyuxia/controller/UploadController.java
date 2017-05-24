package cn.nsu.edu.qingshuyuxia.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

import cn.nsu.edu.qingshuyuxia.tools.UploadUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/upload")
public class UploadController {
	
	@RequestMapping("/uploadImgs")
	@ResponseBody
	public String[] uploadMultipleFileHandler(@RequestParam("file") MultipartFile[] files, HttpServletRequest request) throws IOException {
		
		String[] imgUrl = UploadUtil.uploadImage(request.getServletContext().getRealPath("/"), files);
		System.out.println(request.getServletContext().getRealPath("/"));
		return imgUrl;
	}

}
