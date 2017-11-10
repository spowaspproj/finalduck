<%-- 
    Document   : documents
    Created on : Oct 17, 2016, 9:49:45 PM
    Author     : Stephen
--%>



<%@page import="org.owasp.esapi.ESAPI"%>
<%@page import="com.sittingducks.files.ValidateLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.owasp.esapi.AccessReferenceMap"%>
<%@page import="com.sittingducks.files.FilesMap"%>

<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>


<%
    
    AccessReferenceMap map = null;
    
    //ESAPI.accessController().isAuthorizedForFile(yes);
    
// if the filesMap object has not been created, create it
    if (session.getAttribute("filesMap") == null) {
        
        map = FilesMap.getFilesMap();
        
        session.setAttribute("filesMap", map);
        
        
    } else {
        map = (AccessReferenceMap) session.getAttribute("filesMap");
    }
    
    %>
    
   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Sitting Ducks</title>
        <link href="style.css" rel="stylesheet" type="text/css" />

    </head>

    <body>
        <div id="main">
            <div id="top-nav">
                If<b> Carlsberg</b> did Websites... It <b>definitely</b> wouldn't be this!
            </div>


            <div id="header">
                <img src="images/Banner.jpg" alt="" width="720" height="160" />
            </div>
            <div id="navigation">

                <jsp:include page= "navigationMenu.jsp"></jsp:include>
                </div>
                <br></br>
                <div id="content">
<% if(ValidateLogin.isLogin){
    
    %>
                    <h1>Document Download</h1>
                    <ul>
                    <li >
                        <a href="downloadit.jsp?file=<%=map.getIndirectReference("ICB.pdf")%>"  >ICB.pdf</a> </li>
                    <li><a href="downloadit.jsp?file=<%=map.getIndirectReference("06171162.pdf")%>"> ExampleDoc.pdf </a></li>
                    </ul>
                    <%
                    }else{
response.sendRedirect("errorpage.jsp?message=PLEASE LOGIN");
}
         %>           
            </div>
            <div id="footer">

                <hr />
                Copyright © 2005 | All Rights Reserved

            </div>



        </div>

    </body>

</html>

