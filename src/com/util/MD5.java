package com.util;

import java.math.BigInteger;

/**
 *MD5���������
 *
 */

import java.security.*; 
public final class MD5 {
	
	public final static String MD5(String str){ 
		 	//����һ��MD5���ܼ���ժҪ
			try {
				MessageDigest md = MessageDigest.getInstance("MD5");

				md.update(str.getBytes());
				return new BigInteger(1,md.digest()).toString(16);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "�޷�����";
			}
	}
}
