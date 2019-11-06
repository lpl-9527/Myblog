<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.lpl.pojo.User"%>
<%@page import="com.lpl.dao.AboutDao"%>
<%
		String userid=request.getSession().getAttribute("userID").toString();
		String username=(String)request.getSession().getAttribute("userName");
  	    int OtherID=Integer.parseInt(request.getParameter("OtherID"));
 %>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>他(她)的主页</title>
		<link rel="stylesheet" type="text/css" href="css/Ta的主页.css" />
		<link href="css/关于我.css"  type="text/css"  rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
		<div class="box">
		<span><a style="color: red;" href="#">关于他(她)</a></span>
		<span><a href="jsp/Ta的/Ta的动态.jsp?OtherID=<%=OtherID%>">Ta的动态</a></span>
		<span><a href="jsp/Ta的/Ta的相册.jsp?OtherID=<%=OtherID%>">Ta的相册</a></span>
		<span><a href="jsp/Ta的/Ta的留言板.jsp?OtherID=<%=OtherID%>">Ta的留言板</a></span>
		<%
		if(username.equals("admin")){
		%>
		<a href="admin.jsp">返回</a>
		<%
		}
		else{
		%>
		<a href="person.jsp">返回</a>
		<%
		}
		%>
		</div>
<%
	User user=new AboutDao().getUserInfo(OtherID);
%>
		<article class="aboutcon">
			<div class="about left">
		  		<h2>Just about hem(her)</h2>
		  		 <p class="sig">_________<span><%=user.getUserSig()%></span></p><br>
		    		 <ul> 
		    		  <div><img style="float:right;height: 250px;width: 250px;" alt="" src="<%=user.getUserPhoto()%>"></div>
						  <p style="font-size:medium;"><%=user.getAboutMe() %></p>
		   			 </ul>
			</div>
			<aside class="right">  
				<div class="about_c" id="showCD">
				<img alt="" height="50px" width="50px" style="display: inline;" src="<%=user.getUserProfilePhoto()%>">
				    <p>网名：<span><%=user.getUserName()%></span></p>
				    <p>生日：<span><%=user.getBirthday() %></span></p>
				    <p>年龄：<span><%=user.getUserAge() %></span></p>
				    <p>性别：<span><%=user.getUserSex() %></span></p>
				    <p>爱好：<span><%=user.getUserHobby() %></span></p>
				    <p>邮箱: <span><%=user.getUserEmail() %></span></p>  
				    <p>Q&nbsp;&nbsp;Q：<span><%=user.getUserQq() %></span></p>  
				    <p>微信：<span><%=user.getUserWeChat()%></span></p>
				    <p>电话：<span><%=user.getUserTel()%></span></p>
				    <p>注册时间：<span><%=user.getUserRegistrationTime()%></span></p>
				</div>
			</aside>
		</article>
</body>
</html>