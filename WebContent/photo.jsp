<%@page import="com.lpl.dao.PhotoShowDao"%>
<%@page import="com.lpl.pojo.Photo"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"  %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<%String username=(String)request.getSession().getAttribute("userName");
String userid=request.getSession().getAttribute("userID").toString();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>相册</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/photo.css" />
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span style="color: blue;">精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
		<form action="AddPhotoServlet?userID=<%=userid%>">
		   <div class="insert">
		   	<input style="width:300px;height: 30px;" type="file" name="photo">
		   	 <input style="width:50px;height: 30px;" type="submit" value="上传">
		   </div>
		</form>
		<hr>
<% 		
			ArrayList<Photo> photos =  new PhotoShowDao().getcomInfo(Integer.parseInt(userid));
			 if (photos == null){
				 photos = new ArrayList<Photo>();
				 }
 			for (Photo photo:photos){				
%>
			<div class="photo">
				<p><%=photo.getPhotoDate()%></p><a href="DeletPhotoServlet?photoID=<%=photo.getPhotoId()%>">删除</a>
				<img alt="" src="<%=photo.getPhoto()%>">
			</div>
				<%
 				}
				%>
</body>
</html>