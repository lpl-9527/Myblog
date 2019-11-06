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
  <head>
		<title>修改页面</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
				<link href="css/关于我.css"  type="text/css"  rel="stylesheet">
	</head>
	<body>
	<form method="POST" name="Update" action="UpdateMyinfoServlet">
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span style="color: blue;">关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	  <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
<%
	User user=new AboutDao().getUserInfo(username);
%>

   		<article class="aboutcon">
			<div class="about left">
		  		<h2>Just about me</h2>
		  		 <p class="sig">个性签名_________<span><input type=text name=Sig value=<%out.println(user.getUserSig());%>></span></p>
		    		 <ul> 
						  <textarea name="aboutme" cols="50" rows="10"><%=user.getAboutMe() %></textarea>
		   			 </ul><br/>
		   			  <div><span style="font-size: large;color:teal;">个人照片:</span><input name="user_photo" type="file"> </div>
		   			 <div><img style="height: 250px;width: 250px;" alt="" src="<%=user.getUserPhoto()%>"></div><br/>
		   			  <div><input name="UserPhoto" type="hidden" value=<%out.println(user.getUserPhoto());%>> </div>
			</div>
			<aside class="right">  
				<div class="about_c" id="showCD">
					<p>头像: <span><img style="display: inline; height: 50px;width: 50px;" alt="" src="<%=user.getUserProfilePhoto()%>"></span></p>
 					<p><input name="TX" type="file"></p>
 					<input type="hidden" name=tx value=<%out.println(user.getUserProfilePhoto());%>> 
				    <p>网名：<span><%=username %></span></p>
				    <p>生日：<span><input type=text name=Birthday value=<%out.println(user.getBirthday());%>></span></p>
				    <p>年龄：<span><input type=text name=Age value=<%out.println(user.getUserAge());%>></span></p>
				    <p>性别：<span><input type=text name=Sex value=<%out.println(user.getUserSex());%>></span></p>
				    <p>爱好：<span><input type=text name=Hobby value=<%out.println(user.getUserHobby());%>></span></p>
				    <p>邮箱: <span><input type=text name=Email value=<%out.println(user.getUserEmail());%>></span></p>  
				    <p>Q&nbsp;&nbsp;Q：<span><input type=text name=Qq value=<%out.println(user.getUserQq());%>></span></p>  
				    <p>微信：<span><input type=text name=wechat value=<%out.println(user.getUserWeChat());%>></span></p>
				    <p>电话：<span><input type=text name=Tel value=<%out.println(user.getUserTel());%>></span></p>
				    <p>注册时间：<span><%=user.getUserRegistrationTime()%></span></p>
				    <div style="border-style: dashed;width: 200px;"><input type="image" width="200px" height="60px" src="images/系统图片/submit.png"/></div>
				</div>
			</aside>
		</article>
</form>
</body>
</html>