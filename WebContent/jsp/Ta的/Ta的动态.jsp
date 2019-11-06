<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.lpl.dao.WisShowDao"%>
<%@page import="com.lpl.pojo.Article"%>
<%@page import="com.lpl.dao.WisComShowDao"%>
<%@page import="com.lpl.pojo.ArticleCom"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
  	<%
  	String userid=request.getSession().getAttribute("userID").toString();
	String username=(String)request.getSession().getAttribute("userName");
  	String OtherID=request.getParameter("OtherID");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Ta的动态</title>
		<link rel="stylesheet" type="text/css" href="../../css/Ta的动态.css" />
		<link rel="stylesheet" type="text/css" href="../../css/Ta的主页.css" />
		<link rel="stylesheet" type="text/css" href="../../css/index.css" />
		<link rel="stylesheet" type="text/css" href="../../res/layui/css/layui.css">
 	    <link rel="stylesheet" type="text/css" href="../../res/css/main.css">
</head>
<body>
		<div class="box">
			<span><a href="../../otherindex.jsp?OtherID=<%=OtherID%>">关于他</a></span>
			<span><a style="color: red;" href="Ta的动态.jsp?OtherID=<%=OtherID%>">Ta的动态</a></span>
			<span><a href="Ta的相册.jsp?OtherID=<%=OtherID%>">Ta的相册</a></span>
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
	
	<div class="left">
	<table>
	<div class="title">文章动态</div>
				<hr>
		<div>
		<tr>
			<th ><span>类别</span></th>
			<th ><span>文章</span></th>
			<th><span>发表日期</span></th>
		</tr>
		</div>
<% 		
			ArrayList<Article> articles =  new WisShowDao().getcomInfo(Integer.parseInt(OtherID));
			 if (articles == null){
				 articles = new ArrayList<Article>();
				 }
 			for (Article article:articles){				
%>
		<tr height="30px">
			<td><span><%=article.getArticleSort()%></span></td>
			<td width="300px"><a style="display: inline;" href="../../detail.jsp?articleid=<%=article.getArticleId()%>" target="_blank"><%=article.getArticleTitle()%></a></td>
			<td><span style="text-align: right;"><%=article.getArticleDate()%></span></td>
		</tr>

				<%
 				}
				%>
		</table>
	</div>
	<div class="right">
		<table>
		<div class="title">评论动态</div>
				<hr>
		<tr>
			<th ><span>内容</span></th>
			<th><span>文章</span></th>
			<th><span>评论时间</span></th>
		</tr>
			<%
		ArrayList<ArticleCom> mycoms =  new WisComShowDao().getMycomInfo(Integer.parseInt(OtherID));
		 if (mycoms == null){
			 mycoms = new ArrayList<ArticleCom>();
		 }
		for(ArticleCom mycom:mycoms){
		%>	
		<tr height="40px">
			<td><span><%=mycom.getArticleComContent()%></span></td>
			<td width="150px"><span><a href="../../detail.jsp?articleid=<%=mycom.getArticleId()%>" target="_blank"><%=mycom.getArticleTitle() %></a></span></td>
			<td ><span><%=mycom.getArticleComDate() %></span></td>
		<tr>
		<%
		}
		%>
		</table>
	</div>
</body>
</html>