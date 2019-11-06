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
String permission=(String)request.getSession().getAttribute("permission");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>文章管理</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/文章管理.css" />
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span style="color: blue;">文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a> 	 
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
		<form action="AddArticleServlet" method="post">
				<div class="left">
		<div><span>标题:</span><input  name="title" type="text"></div><br/><br/>
			<div><span>类别:</span>
			<select name="sort">
			<option>财经</option>
			<option>国际</option>
			<option>教育</option>
			<option>景点</option>
			<option>科技</option>
			<option>美文</option>
			<option>学术</option>
			<option>娱乐</option>
			</select> 
		</div><br/><br/>
		<div><span>内容:</span><textarea name="content" cols="40" rows="10"></textarea></div><br/><br/>
		<div><span>照片:</span><input name="articlephoto" type="file"> </div><br/><br/>
		<div><input onclick="return check();" style="width: 250px;height: 80px;padding-left: 50px;" type="image"  src="images/系统图片/submit.png"> </div>
		</div>
		</form>
	<div class="right">
	<table>
		<div>
		<tr>
			<th width="80px"><span>文章类别</span></th>
			<th width="300px"><span>文章标题</span></th>
			<th><span>发表日期</span></th>
		</tr>
		</div>
<% 		
			ArrayList<Article> articles =  new WisShowDao().getcomInfo(Integer.parseInt(userid));
			 if (articles == null){
				 articles = new ArrayList<Article>();
				 }
 			for (Article article:articles){				
%>
		<div class="title">
		<tr height="30px">
			<td><span><%=article.getArticleSort()%></span></td>
			<td><a style="display: inline;" href="detail.jsp?articleid=<%=article.getArticleId()%>" target="_blank"><%=article.getArticleTitle()%></a></td>
			<td><span style="text-align: right;"><%=article.getArticleDate()%></span></td>
			<td><a style="display: inline;" href="DeleteArticleServlet?flag=user&articleID=<%=article.getArticleId()%>">删除</a></td>
		</tr>
		</div>

				<%
 				}
				%>
		</table>
	</div>
	 <script>
function check(){
   <%if(permission.equals("1")){%>
     alert("您已被禁止发表文章!");
     return false;
    <%
   }
   %>
   return true;
}
</script>
</body>
</html>