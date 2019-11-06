<%@page import="com.lpl.dao.WordLeaveShowDao"%>
<%@page import="com.lpl.pojo.WordLeave"%>
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
		<title>留言板</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
	</head>
	<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span>朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span style="color: blue;">留言板</span><span class="en">Board</span></a>
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
<div class="content whisper-content leacots-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <img class="banner-img" src="images/系统图片/liuyan.jpg">
              </div>
               <%
                    	ArrayList<WordLeave> words =  new WordLeaveShowDao().getcomInfo(Integer.parseInt(userid));
 					 	if (words == null){
 					 		words = new ArrayList<WordLeave>();
 					 	}
 					 	int p = words.size();
 				%>
              <div class="volume">
                全部留言 <span><%=words.size() %></span>
              </div>
              <div class="list-cont">        
                <div class="cont">
                  
 					 <%
 					 for (WordLeave word:words){
 						 
 					 %>
 					 <hr class="layui-bg-cyan">
 					 
 					 <div class="img">
                    	<a href="otherindex.jsp?OtherID=<%=word.getOtherId()%>"><img style="height: 50px;width: 50px;" src="<%=word.getOtherPicture() %>" alt=""></a>
                 	 </div>
                 	 <div class="text">
                   	 	<p class="tit"><span class="name" style="font-size:18px"><%=p%>  <%=word.getOtherName()%></span><span class="data"><%=word.getWordDate()%></span></p>
                    	<a href="DeleteWordServleyt?WordID=<%=word.getWordId()%>">删除</a>
                    	<p class="ct"><%=word.getWordContent()%></p><br/>
                    	
                  	 </div>
     				<%
     				p--;
     				}%>
      
                </div>
              </div>
          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
    </div>
  </div>
</body>
</html>