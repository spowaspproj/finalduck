/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sittingducks.files;

/**
 *
 * @author Win7
 */
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class ApplicationSessionListener extends ValidateLogin implements HttpSessionListener {

    
    
    
    
    @Override
    public void sessionCreated(HttpSessionEvent event) {
       
        System.out.println("Session Created");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
        
        redirect = true;
        
        System.out.println("Session Destroyed " + ValidateLogin.session);
        
        
         
    }

   

    
    
}
