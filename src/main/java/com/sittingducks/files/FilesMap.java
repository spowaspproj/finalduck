/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sittingducks.files;

import org.owasp.esapi.reference.RandomAccessReferenceMap;
import java.util.HashSet;
import java.util.Set;
import org.owasp.esapi.AccessReferenceMap;
import org.owasp.esapi.reference.DefaultRandomizer;

/**
 *
 * @author Win7
 */
public class FilesMap {
    
  
    
public static AccessReferenceMap getFilesMap(){
    
Set fileSet = new HashSet();

fileSet.add("06171162.pdf");

fileSet.add("ICB.pdf");

return new RandomAccessReferenceMap(fileSet);
}

    
}
