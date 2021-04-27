package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.entities.Comment;
import com.repositories.CommentRepository;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	@Qualifier("commentRepository")
	CommentRepository commentRepository;

	@Override
	public boolean add(Comment comment) {
		// TODO Auto-generated method stub
		return commentRepository.add(comment);
	}

	@Override
	public void ApproveCommend(List<Integer> listComent) {
		commentRepository.ApproveCommend(listComent);
		
	}

	@Override
	public boolean deleteCommend(List<Integer> listComent) {
		// TODO Auto-generated method stub
		return commentRepository.deleteCommend(listComent);
	}

	@Override
	public void ApproveCommend(int id) {
		// TODO Auto-generated method stub
		commentRepository.ApproveCommend(id);
	}

	@Override
	public boolean deleteCommend(int id) {
		// TODO Auto-generated method stub
		return commentRepository.deleteCommend(id);
	}

	@Override
	public Comment getById(int id) {
		// TODO Auto-generated method stub
		return commentRepository.getById(id);
	}

	@Override
	public List<Comment> getListCommentByIDPost(int id) {
		// TODO Auto-generated method stub
		return commentRepository.getListCommentByIDPost(id);
	}

	@Override
	public List<Comment> getListCommentBiIDUser(int id) {
		// TODO Auto-generated method stub
		return commentRepository.getListCommentBiIDUser(id);
	}

}
