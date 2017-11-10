<%-- 
    Document   : home
    Created on : Oct 17, 2016, 8:46:14 PM
    Author     : Stephen
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sittingducks.files.ValidateLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.sittingducks.files.DBConnect"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sitting Ducks</title>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>
<%
   
    
    String username = "";
    String password = "";


%>
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

<%
    
    if(ValidateLogin.isLogin){

    %>

<div id="content">

    <h1>Messages List</h1>
<%
    
    
   String user = ValidateLogin.userNoValid;
    
   Connection con=new DBConnect().connect(getServletContext().getRealPath("/WEB-INF/config.properties"));
        if(con!=null && !con.isClosed())
          {
              ResultSet rs = null;
                PreparedStatement pst = con.prepareStatement("select * from UserMessages where recipient=?");
                pst.setString(1, user);
                rs = pst.executeQuery(); 
         
             out.print("</br></br>Messages for user:  </br>");
             
             %> 
             ${sessionScope['user']} 
             <%
             
             out.println("<ol>");
             while (rs.next()) 
            {
                out.print("<li><a href='DisplayMessage.jsp?msgid="+rs.getString("msgid")+" '>"+rs.getString("subject")+"</a></li>");
                
            }
            out.println("</ol>");
       }

}else{

response.sendRedirect("errorpage.jsp?message=PLEASE LOGIN");
}

%>
</div>
<div id="footer">

    <hr />
        Copyright © 2016 | Sitting Ducks

</div>



</div>

</body>

</html>

