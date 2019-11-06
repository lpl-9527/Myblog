<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.lpl.dao.WisShowDao"  %>
<%@ page import="com.lpl.dao.WisComShowDao"  %>
<%@ page import="com.lpl.pojo.Article"  %>
<%@ page import="com.lpl.pojo.ArticleCom"  %>
<%@ page import="java.util.ArrayList"  %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<%
String username=(String)request.getSession().getAttribute("userName");
String userid=request.getSession().getAttribute("userID").toString();
String picture=(String)request.getSession().getAttribute("picture");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>我的博客</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span style="color: blue;">首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	  <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
		<div class="banner">
			<section class="box">
			    <ul class="texts">
			      <p>每个人的生命就像沙漏，里面装的沙子总量大致相当，</p>
			      <p>不同的是，有的沙漏颈部较细，有的沙漏颈部较粗。</p>
			      <p>颈部较细的沙漏能够抓住每一粒时间之沙，即使沙子总</p>
			      <p>量一样，也能拥有更长的生命。</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      	&nbsp;&nbsp;&nbsp;-----《暗时间》
			      </p>
			    </ul>
			   
			    <div class="avatar">
			   	 <a style="display: block; padding-top: 97px; width: 160px; background: url(<%=picture%>) no-repeat; background-size: 130px 130px;" href="#"  >
			  	  <span><%=username%></span>
			  	 </a> 
			    </div>
			</section>
		</div>
		<div class="template">
			<div class="box">
			   <h3>
			      <p><span>经典书籍</span>分享</p>
				 </h3>
			    <ul>
			      <li><a><img src="images/主页推荐书籍/book_01.png"></a><span>《深入理解Java虚拟机》</span></li>
			      <li><a><img src="images/主页推荐书籍/book_02.png"></a><span>《Effective Java》</span></li>
			      <li><a><img src="images/主页推荐书籍/book_03.png"></a><span>《深入分析JavaWeb》</span></li>
			      <li><a><img src="images/主页推荐书籍/book_04.png"></a><span>《MySQL5.6从零开始学》</span></li>
			      <li><a><img src="images/主页推荐书籍/book_05.png"></a><span>《Java多线程编程》</span></li>
			      <li><a><img src="images/主页推荐书籍/book_06.png"></a><span>《Java并发编程实战》</span></li>
			    </ul>
			</div>
		</div>
		
			  

	</body>
</html>