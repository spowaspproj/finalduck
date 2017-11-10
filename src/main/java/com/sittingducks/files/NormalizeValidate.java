/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sittingducks.files;

import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Win7
 */
public class NormalizeValidate {
    
    
    /// source: https://www.securecoding.cert.org/confluence/display/java/IDS01-J.+Normalize+strings+before+validating+them
    
    public String normalizeValidate(String s){
    
    //String exampleCode = "\uFE64" + "script" + "\uFE65";
 
// Normalize
  s = Normalizer.normalize(s, Form.NFKC);
 
// Validate
Pattern pattern = Pattern.compile("[<>]");
Matcher matcher = pattern.matcher(s);

if (matcher.find()) {
  // Found blacklisted tag
  
  System.out.println("LOGIN INPUT: illegal characters found");
            
            // Custom Input Validation
  
           s = s.replace("<", " ");
           s = s.replace("img", " ");
           s = s.replace(">", " ");
           s = s.replace("alt=", " ");
           s = s.replace("scr=", " ");
           s = s.replace("script", " ");
           s = s.replace("style=", " ");
           s = s.replace("src=","");
           s = s.replace("https://", " ");
  
}else {
 
    System.out.println("LOGIN INPUT: no illegal characters found");
}
   return s;
   
    }
}
