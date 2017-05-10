package cn.nsu.edu.qingshuyuxia.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.nsu.edu.qingshuyuxia.po.User;
import cn.nsu.edu.qingshuyuxia.po.UserCustom;
import cn.nsu.edu.qingshuyuxia.service.UserService;


@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/queryUser.action")
	public String queryUser(Model model)throws Exception{
		//根据id查找用户
		UserCustom userCustom = userService.findUserById(1);
		System.out.println(userCustom.getUsername());
		//返回用户信息
		model.addAttribute("userCustom",userCustom);
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/manager.action")
	public String Manager(){
		
		
		return "admin/admin";
	}
	
	@RequestMapping("/loginSubmit.action")
	public String loginSubmit(UserCustom userCustom,HttpSession session,Model model) throws Exception{
		
		if(userCustom == null){
			return "error";
		}
		
		String userName = userCustom.getUsername();
		String userPassword = userCustom.getUserpassword();
		
		//查询数据库
		UserCustom userCustomDB = userService.findUserByName(userName);
		//数据库的信息
		String userNameDB = userCustomDB.getUsername();
		String userPasswordDB = userCustomDB.getUserpassword();
		//System.out.println(userNameDB+userPasswordDB);
		if(userName.equals(userNameDB) && userPassword.equals(userPasswordDB)){
			session.setAttribute("userId", userCustomDB.getId());
			session.setAttribute("userName", userName);
			session.setAttribute("ADMINSESSION", "adminsession");
			return "redirect:/posts/index.action";
		}
		
		return "error";
	}
	
	@RequestMapping("/logout.action")
	public String logout(HttpSession session){
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		session.removeAttribute("ADMINSESSION");
		//controller之间的跳转要这样写
		return "redirect:/posts/index.action";
	}
	
}
