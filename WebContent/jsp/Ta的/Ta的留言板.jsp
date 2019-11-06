<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.lpl.dao.WordLeaveShowDao"%>
<%@page import="com.lpl.pojo.WordLeave"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
  	<%     String OtherID=request.getParameter("OtherID");
  	String userid=request.getSession().getAttribute("userID").toString();
		String username=(String)request.getSession().getAttribute("userName");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Ta的留言板</title>
		<link rel="stylesheet" type="text/css" href="../../css/Ta的主页.css" />
		<link rel="stylesheet" type="text/css" href="../../css/index.css" />
		<link rel="stylesheet" type="text/css" href="../../res/layui/css/layui.css">
 	    <link rel="stylesheet" type="text/css" href="../../res/css/main.css">
</head>
<body>
		<div class="box">
			<span><a href="../../otherindex.jsp?OtherID=<%=OtherID%>">关于他</a></span>
			<span><a href="Ta的动态.jsp?OtherID=<%=OtherID%>">Ta的动态</a></span>
			<span><a href="Ta的相册.jsp?OtherID=<%=OtherID%>">Ta的相册</a></span>
			<span><a style="color: red;" href="Ta的留言板.jsp?OtherID=<%=OtherID%>">Ta的留言板</a></span>
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
		<div class="content whisper-content leacots-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <img class="banner-img" src="../../images/系统图片/liuyan.jpg">
                <div class="form">
                  <form class="layui-form" action="../../AddWordServlet?UserID=<%=OtherID%>" method="POST">
                 	<div class="layui-form-item layui-form-text">
                      <div class="layui-input-block">
                      	<textarea name="content" id="content" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                      </div>
                    </div>
                    <div class="layui-form-item">
                      <div class="layui-input-block" style="text-align: right;">
                        <input class="layui-btn definite" type="submit" value="确定"/>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
               <%
                    	ArrayList<WordLeave> words =  new WordLeaveShowDao().getcomInfo(Integer.parseInt(OtherID));
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
                    	<a href="../../otherindex.jsp?OtherID=<%=word.getOtherId()%>"><img style="height: 50px;width: 50px;" src="<%=word.getOtherPicture() %>" alt=""></a>
                 	 </div>
                 	 <div class="text">
                   	 	<p class="tit"><span class="name" style="font-size:18px">#<%=p%>   <%=word.getOtherName()%></span><span class="data"><%=word.getWordDate()%></span></p>
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