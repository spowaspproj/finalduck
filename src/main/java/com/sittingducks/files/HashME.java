package com.sittingducks.files;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.math.*;
import java.security.*;
 
public class HashME {
     
    public static String Hashthis (String input){
		try
		{
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(input.getBytes());
			BigInteger number = new BigInteger(1,messageDigest);
			String hashtext = number.toString(16);
			while(hashtext.length() < 32){
				
				hashtext = "0" + hashtext;

			}
			return hashtext;
		}
		catch (NoSuchAlgorithmException e){
			throw new RuntimeException(e);

		}
    }
}