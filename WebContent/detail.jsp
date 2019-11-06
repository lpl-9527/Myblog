<%@page import="com.lpl.dao.DetailDao"%>
<%@page import="com.lpl.pojo.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String articleid=request.getParameter("articleid");
%>
<!DOCTYPE html>
<html>

<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>详细界面</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
  
  <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="layer/layer.js"></script>
</head>
<body>
<%
	Article article=new DetailDao().getInfo(articleid);
%>
<div class="content whisper-content leacots-content details-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <div class="article-cont">
                  <div class="title">
                    <h3><%=article.getArticleTitle()%></h3>
                    <p class="cont-info"><span class="data"><%=article.getArticleDate()%></span><span class="types"><%=article.getArticleSort()%></span></p>
                  </div>
                  <p><%=article.getArticleContent()%></p>         
                  <img src="<%=article.getArticlePhoto()%>">
                </div>
              </div>
          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
   </div>
 </div> 
<script type="text/javascript" src="res/layui/layui.js"></script>
</body>
</html>