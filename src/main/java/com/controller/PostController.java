package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.Post;
import com.entities.User;
import com.modal.PostModal;
import com.modal.PostUpdateModal;
import com.services.PostServiceImpl;

@Controller
public class PostController {

	@Autowired
	PostServiceImpl postServiceImpl;

	@RequestMapping(path = "/addpost123", method = RequestMethod.GET)
	public String createpost(Model model, HttpSession session) {
		User user = null;
		user = (User) session.getAttribute("User");
		if (user != null) {
			model.addAttribute("PostModal", new PostModal());
			return "addpost";
		}
		return "redirect:/login";
	}

	@RequestMapping(path = "/addpost", method = RequestMethod.POST)
	public String createposts(@ModelAttribute("PostModal") PostModal postModal, ModelMap map, HttpSession session) {
		User user = null;
		user = (User) session.getAttribute("User");
		if (user != null) {
			Post post = new Post();
			post.setContent(postModal.getContent());
			post.setTags(postModal.getTags());
			post.setTitle(postModal.getTitle());
			post.setStatus(postModal.getStatus());
			post.setUser(user);
			post.setCreateTime(new Date());
			post.setUpdateTime(new Date());
			postServiceImpl.add(post);
			return "redirect:/postmm";
		}
		return "redirect:/login";
	}

	@RequestMapping(path = "/postmm", method = RequestMethod.GET)
	public String postMM(HttpSession session, Model map) {
		User user = null;
		user = (User) session.getAttribute("User");
		if (user != null) {
			List<Post> listPostUser = postServiceImpl.getAllListByIDAcc(user.getIdUser());
			map.addAttribute("listPostUser", listPostUser);
			return "postmm";
		}
		return "redirect:/login";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		postServiceImpl.delete(id);
		return "redirect:/postmm";
	}

	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, ModelMap map) {
		Post post = null;
		post = postServiceImpl.getById(id);
		if (post != null) {
			map.addAttribute("PostModalUpdate", new PostUpdateModal());
			map.addAttribute("postEdit", post);
			return "editpost";
		}
		return "redirect:/";
	}

	@RequestMapping(value = "edit/updatepost" , method = RequestMethod.POST)
	public String updatepost(@ModelAttribute("PostModalUpdate") PostUpdateModal postUpdateModals, HttpSession session,
			ModelMap map) {
		System.out.println(postUpdateModals.toString());
		User user = null;
		user = (User) session.getAttribute("User");
		
		if (user != null) {
			Post post = new Post();
			post.setIdPost(Integer.parseInt(postUpdateModals.getId()));
			post.setContent(postUpdateModals.getContent());
			post.setTags(postUpdateModals.getTags());
			post.setTitle(postUpdateModals.getTitle());
			post.setStatus(postUpdateModals.getStatus());
			post.setUser(user);
			post.setCreateTime(new Date());
			post.setUpdateTime(new Date());
			postServiceImpl.update(post);
			return "redirect:/postmm";
		}
		return "redirect:/login";
	}
}
