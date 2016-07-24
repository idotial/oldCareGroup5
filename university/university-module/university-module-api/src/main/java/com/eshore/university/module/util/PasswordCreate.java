package com.eshore.university.module.util;

import java.security.MessageDigest;

public class PasswordCreate {

	public static String getPassword(String password){		
		//加密测试		
		byte[] b = null;
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			b = md5.digest(password.getBytes("UTF-8"));
		} catch (Exception e) {
			// TODO: handle exception'
			e.printStackTrace();
		}
		return new String(b); 
	}
}
