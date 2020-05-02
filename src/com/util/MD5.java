package com.util;

import java.math.BigInteger;

/**
 *MD5密码加密类
 *
 */

import java.security.*; 
public final class MD5 {
	
	public final static String MD5(String str){ 
		 	//生成一个MD5加密计算摘要
			try {
				MessageDigest md = MessageDigest.getInstance("MD5");

				md.update(str.getBytes());
				return new BigInteger(1,md.digest()).toString(16);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "无法加密";
			}
	}
}
