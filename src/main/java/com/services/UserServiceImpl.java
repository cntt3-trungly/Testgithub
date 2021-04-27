package com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entities.User;
import com.modal.LoginModal;
import com.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	public User login(LoginModal loginModal) {
		// TODO Auto-generated method stub
		return userRepository.login(loginModal);
	}

}
