package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.entities.Comment;
import com.entities.Post;
import com.entities.User;
import com.modal.CommentModal;
import com.services.CommentServiceImpl;
import com.services.PostServiceImpl;
import com.untils.NumberUntils;

@Controller
public class CommentController {
	
	@Autowired
	CommentServiceImpl commentServiceImpl;

	@Autowired
	PostServiceImpl postService;
	
	@GetMapping("/commentmm")
	public String commentmm(HttpSession session, ModelMap map) {
		User user = null;
		user = (User) session.getAttribute("User");
		if (user != null) {
			List<Comment> listCommnet = commentServiceImpl.getListCommentBiIDUser(user.getIdUser());
			map.addAttribute("listCommnet", listCommnet);
			return "commentmm";
		}
		return "redirect:/login";
	}

	@GetMapping("deletecomment/{id}")
	public String deletecomment(@PathVariable("id") String id, ModelMap map) {
		if (id != null && NumberUntils.isNumm(id)) {
			Comment comm = null;
			comm = commentServiceImpl.getById(Integer.parseInt(id));
			if (comm != null) {
				commentServiceImpl.deleteCommend(Integer.parseInt(id));
				return "redirect:/commentmm";
			}
		}
		return "redirect:/";
	}

	@GetMapping("aprovecomment/{id}")
	public String aprovecomment(@PathVariable("id") String id, ModelMap map) {
		if (id != null && NumberUntils.isNumm(id)) {
			Comment comm = null;
			comm = commentServiceImpl.getById(Integer.parseInt(id));
			if (comm != null) {
				commentServiceImpl.ApproveCommend(Integer.parseInt(id));
				return "redirect:/commentmm";
			}
		}
		return "redirect:/";
	}
	
	@PostMapping("addcomment/{id}")
	public String addcomment(HttpSession session,@ModelAttribute("CommentModal")  CommentModal dto,@PathVariable("id") int id, ModelMap map) {
		System.out.println(dto.getContent());
		User user = null;
		user = (User) session.getAttribute("User");
		Comment comment = new Comment();
		comment.setAuthor(user.getUserName());
		comment.setContent(dto.getContent());
		comment.setCreate_time(new Date());
		comment.setEmail(user.getEmail());
		comment.setStatus("approved");
		comment.setEmail(user.getEmail());
		comment.setUrl("https://bootdey.com/img/Content/avatar/avatar2.png");
		Post post=postService.getById(id);
		comment.setPost(post);
		commentServiceImpl.add(comment);
		return "redirect:/";
	}
}
