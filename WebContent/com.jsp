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
<%String username=(String)request.getSession().getAttribute("userName");
int userid=(int)request.getSession().getAttribute("userID");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>评论管理</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/评论管理.css" />
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span style="color: blue;">评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
		<div class="com">
		<div class="left">
		<table>
		<div class="title">评论我的</div>
				<hr>
		<tr>
			<th ><span>内容</span></th>
			<th><span>文章</span></th>
			<th><span>时间</span></th>
			<th><span>评论者</span></th>
		</tr>
		<%
		ArrayList<ArticleCom> coms =  new WisComShowDao().getToMecomInfo(userid);
		 if (coms == null){
			 coms = new ArrayList<ArticleCom>();
		 }
		for(ArticleCom com:coms){
		%>
		<tr height="40px">
			<td><span><%=com.getArticleComContent()%></span></td>
			<td><span><a href="detail.jsp?articleid=<%=com.getArticleId()%>" target="_blank"><%=com.getArticleTitle() %></a></span></td>
			<td width="150px"><span><%=com.getArticleComDate() %></span></td>
			<td  width="80px"><span><%=com.getArticleComName() %></span></td>
			<td><a href="DeleteComServlet?flag=user&comID=<%=com.getArticleComId()%>">删除</a></td>
		<tr>
		<%
		}
		%>
		</table>
		</div>
		
		<div class="right">
		<table>
		<div class="title">我参与的</div>
		<hr>
		<tr>
			<th ><span>内容</span></th>
			<th><span>文章</span></th>
			<th><span>时间</span></th>
		</tr>
			<%
		ArrayList<ArticleCom> mycoms =  new WisComShowDao().getMycomInfo(userid);
		 if (mycoms == null){
			 mycoms = new ArrayList<ArticleCom>();
		 }
		for(ArticleCom mycom:mycoms){
		%>	
		<tr height="40px">
			<td><span><%=mycom.getArticleComContent()%></span></td>
			<td><span><a href="detail.jsp?articleid=<%=mycom.getArticleId()%>" target="_blank"><%=mycom.getArticleTitle() %></a></span></td>
			<td width="150px"><span><%=mycom.getArticleComDate() %></span></td>
			<td width="40px"><a href="DeleteComServlet?flag=user&comID=<%=mycom.getArticleComId()%>">删除</a></td>
		<tr>
		<%
		}
		%>
		</table>
		</div>
		</div>
</body>
</html>