package com.learning.login;

public class LoginService {
	public boolean isUserValid(String user, String password) {
		if(user.isEmpty() || password.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}
}
