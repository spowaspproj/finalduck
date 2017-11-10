<%-- 
    Document   : navigationMenu
    Created on : Nov 6, 2017, 2:23:37 PM
    Author     : Win7
--%>


<%@page import="com.sittingducks.files.ValidateLogin"%>

<jsp:include page= "redirect.jsp"></jsp:include>
<%

    boolean isLoggedIn = ValidateLogin.isLogin;
%>

Menu </br>

<%
    if (isLoggedIn) {
%>
${sessionScope['user']}
<%
    }
%>
<hr />
<a href="index.jsp" class="navigation">Home</a>
<a href="search.jsp" class="navigation">Search</a>

<%
    if (isLoggedIn) {
%>
<a href="documents.jsp" class="navigation">Documents</a>
<a href="Messages.jsp" class="navigation">Messages</a>
<a href="SendMessage.jsp" class="navigation">Send Message</a>
<a href="logout.jsp" class="navigation">Logout</a>
<%
} else {
%>

<a href='login.jsp' class="navigation">Login</a>

<%
    }
%>



