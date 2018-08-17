package com.spring.dao;

import com.spring.pojo.Login;
import com.spring.pojo.User;

public interface UserDao {
	  void register(User user);
	  User validateUser(Login login);
	}