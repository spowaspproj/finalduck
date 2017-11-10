<%-- 
    Document   : downloadit
    Created on : Nov 10, 2017, 3:08:35 PM
    Author     : Win7
--%>

<%@page import="org.owasp.esapi.AccessReferenceMap"%>
<%@page import="com.sittingducks.files.FilesMap"%>

<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download</title>
    </head>
    <body>
        
         
        <%  
            AccessReferenceMap map = null;
            
          
                       
      if (request.getParameter("file") != null) {
                        
             String filePath;           
        
        String context = request.getContextPath();

        int BUFSIZE = 4096;
        
        
        filePath = request.getParameter("file");
        
        filePath = (String)map.getDirectReference(filePath);
        
        File file = new File(getServletContext().getRealPath("/") + context);
        file = new File(file.getParent() + "/documents/" + filePath);
        int length = 0;
        ServletOutputStream outStream = response.getOutputStream();
        response.setContentType("text/html");
        response.setContentLength((int) file.length());
        String fileName = (new File(filePath)).getName();
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

        byte[] byteBuffer = new byte[BUFSIZE];
        DataInputStream in = new DataInputStream(new FileInputStream(file));

        while ((in != null) && ((length = in.read(byteBuffer)) != -1)) {
            outStream.write(byteBuffer, 0, length);
        }

        in.close();
        outStream.close();
    } else {
        
        
    }
%>
    </body>
</html>
