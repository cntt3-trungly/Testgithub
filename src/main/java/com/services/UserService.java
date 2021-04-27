package com.services;

import com.entities.User;
import com.modal.LoginModal;

public interface UserService {
	public User login(LoginModal loginModal);
}
