package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.Post;
import com.services.PostServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	PostServiceImpl postServiceImpl;
		
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Post> listPost = postServiceImpl.getTopNewPost();
		model.addAttribute("listPost", listPost);
		return "index";
	}
	
	@RequestMapping(path = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}
		
	@RequestMapping(path = "/about", method = RequestMethod.GET)
	public String about(Model model) { 
	    return "about"; 
	}		
}
