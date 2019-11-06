<%@page import="com.lpl.dao.AboutDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.lpl.dao.WisShowDao"  %>
<%@ page import="com.lpl.dao.AboutDao"  %>
<%@ page import="com.lpl.pojo.User"  %>
<%@ page import="java.util.ArrayList"  %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<%
String username=(String)request.getSession().getAttribute("userName");
String userid=request.getSession().getAttribute("userID").toString();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	User user=new AboutDao().getUserInfo(username);
%>
  <head>
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link href="css/关于我.css"  type="text/css"  rel="stylesheet">
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span >关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
   		<article class="aboutcon">
			<div class="about left">
		  		<h2>Just about me</h2>
		  		 <p class="sig">_________<span><%=user.getUserSig()%></span></p><br>
		    		 <ul> 
		    		  <div><img style="float:right;height: 250px;width: 250px;" alt="" src="<%=user.getUserPhoto()%>"></div>
						  <p style="font-size:medium;"><%=user.getAboutMe() %></p>
		   			 </ul>
			</div>
			<aside class="right">  
				<div class="about_c" id="showCD">
				<img alt="" height="50px" width="50px" style="display: inline;" src="<%=user.getUserProfilePhoto()%>">
				    <p>网名：<span><%=username %></span></p>
				    <p>生日：<span><%=user.getBirthday() %></span></p>
				    <p>年龄：<span><%=user.getUserAge() %></span></p>
				    <p>性别：<span><%=user.getUserSex() %></span></p>
				    <p>爱好：<span><%=user.getUserHobby() %></span></p>
				    <p>邮箱: <span><%=user.getUserEmail() %></span></p>  
				    <p>Q&nbsp;&nbsp;Q：<span><%=user.getUserQq() %></span></p>  
				    <p>微信：<span><%=user.getUserWeChat()%></span></p>
				    <p>电话：<span><%=user.getUserTel()%></span></p>
				    <p>注册时间：<span><%=user.getUserRegistrationTime()%></span></p>
				   <a href="edit.jsp?userID=<%=userid%>">修改个人信息</a>
				</div>
			</aside>
		</article>
		   	
</body>
</html>