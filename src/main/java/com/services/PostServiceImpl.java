package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.entities.Post;
import com.repositories.PostRepository;

@Service
public class PostServiceImpl implements PostService{
	
	@Autowired
	@Qualifier("postRepository")
	PostRepository postRepository;

	@Override
	public boolean add(Post post) {
		// TODO Auto-generated method stub
		return postRepository.add(post);
	}

	@Override
	public boolean update(Post post) {
		// TODO Auto-generated method stub
		return postRepository.update(post);
	}

	@Override
	public boolean delete(List<Integer> list) {
		// TODO Auto-generated method stub
		return postRepository.delete(list);
	}

	@Override
	public Post getById(int id) {
		// TODO Auto-generated method stub
		return postRepository.getById(id);
	}

	@Override
	public boolean publishedPost(int id) {
		// TODO Auto-generated method stub
		return postRepository.publishedPost(id);
	}

	@Override
	public boolean unPublishedPost(int id) {
		// TODO Auto-generated method stub
		return postRepository.unPublishedPost(id);
	}

	@Override
	public List<Post> getAllList() {
		// TODO Auto-generated method stub
		return postRepository.getAllList();
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return postRepository.delete(id);
	}

	@Override
	public List<Post> getAllListByIDAcc(int id) {
		// TODO Auto-generated method stub
		return postRepository.getAllListByIDAcc (id);
	}

	@Override
	public List<Post> getTopNewPost() {
		// TODO Auto-generated method stub
		return postRepository.getTopNewPost();
	}
}
