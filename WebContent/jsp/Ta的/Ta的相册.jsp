<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.lpl.dao.PhotoShowDao"%>
<%@page import="com.lpl.pojo.Photo"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
  	<%     String OtherID=request.getParameter("OtherID");
  	String userid=request.getSession().getAttribute("userID").toString();
		String username=(String)request.getSession().getAttribute("userName");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Ta的相册</title>
		<link rel="stylesheet" type="text/css" href="../../css/Ta的主页.css" />
		<link rel="stylesheet" type="text/css" href="../../css/photo.css" />
		<link rel="stylesheet" type="text/css" href="../../css/Ta的主页.css" />
		<link rel="stylesheet" type="text/css" href="../../css/index.css" />
		<link rel="stylesheet" type="text/css" href="../../res/layui/css/layui.css">
 	    <link rel="stylesheet" type="text/css" href="../../res/css/main.css">
</head>
<body>
		<div class="box">
			<span><a href="../../otherindex.jsp?OtherID=<%=OtherID%>">关于他</a></span>
			<span><a href="Ta的动态.jsp?OtherID=<%=OtherID%>">Ta的动态</a></span>
			<span><a style="color: red;" href="Ta的相册.jsp?OtherID=<%=OtherID%>">Ta的相册</a></span>
			<span><a href="Ta的留言板.jsp?OtherID=<%=OtherID%>">Ta的留言板</a></span>
		<%		
		if(username.equals("admin")){
		%>
		<a href="../../admin.jsp">返回</a>
		<%
		}
		else{
		%>
		<a href="../../person.jsp">返回</a>
		<%
		}
		%>
		</div>
				<hr>
<% 		
			ArrayList<Photo> photos =  new PhotoShowDao().getcomInfo(Integer.parseInt(OtherID));
			 if (photos == null){
				 photos = new ArrayList<Photo>();
				 }
 			for (Photo photo:photos){				
%>
			<div class="photo">
				<img alt="" src="<%=photo.getPhoto()%>">
			</div>
				<%
 				}
				%>
</body>
</html>