<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Show Details</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div align = "center">
    <%
    	Vector<String> v;
    	v = (Vector<String>)request.getAttribute("list2");
    	String bname = v.elementAt(0);
    	for(int i=0; i<v.size(); i++){
    		String bk = v.elementAt(i);
    		out.println(bk + "</br>");
    	}
     %>
     <form action = "DeleteAction">
<!--      	<a href="DeleteAction?name=<%=bname %>">Delete the Book</a> -->
     </form>
     <a href="index.jsp">back to home</a>
  </body>
  </div>
</html>
