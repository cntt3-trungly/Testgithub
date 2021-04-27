package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.User;
import com.modal.LoginModal;
import com.services.UserServiceImpl;


@Controller
public class UserController {
	
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String displayLogin(Model model) { 
	    model.addAttribute("Usermodel", new LoginModal()); 
	    return "login"; 
	}
	
	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String loginConfirm(ModelMap map, HttpSession session,@ModelAttribute("Usermodel")  @Validated LoginModal dto,BindingResult br) {
		 if(br.hasErrors()){
             return "login";
         }else{
             User user=null;
             user=userServiceImpl.login(dto);
             if(user!=null) {
                 map.addAttribute("User",user);
                 session.setAttribute("User",user);
                 return "redirect:/";
             }else {
                 map.addAttribute("Error","Tài khoản hoặc mật khẩu không hơp lệ");
                 return "login";
             }   
         }
	}
	
	@RequestMapping(path = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) { 
		User user=null;
		user=(User)session.getAttribute("User");
		if(user!=null){
			session.removeAttribute("User");
				return "redirect:/";
		}
		return "redirect:/login";
	}
}
