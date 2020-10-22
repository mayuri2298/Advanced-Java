package com.service;

import com.dao.UserDao;
import com.dao.UserDaoImpli;
import com.dto.User;

public class UserServiceImpli implements UserService {

	private UserDao userDao;
	public UserServiceImpli() {
		userDao = new UserDaoImpli();
	}
	@Override
	public int registerUser(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public boolean loginUser(User user) {
		return userDao.validateUser(user);
	}

}
