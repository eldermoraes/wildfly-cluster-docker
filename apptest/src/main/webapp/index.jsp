<%-- 
    Document   : index
    Created on : Jan 5, 2017, 10:48:32 PM
    Author     : eldermoraes
--%>

<%@ page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cluster Test</title>
</head>
<body>
<center>
	<h1>The request is being answered by:</h1>
	<h2><font color="red">IP: <%=InetAddress.getLocalHost().getHostAddress()%></font></h2>
	<h2><font color="blue">HostName: <%=InetAddress.getLocalHost().getCanonicalHostName() %></font></h2>
        <h2><font color="green">Session ID: <%=request.getSession().getId() %></font></h2>
</center>
</body>
</html>
