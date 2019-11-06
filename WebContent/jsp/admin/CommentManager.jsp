<%@page import="com.lpl.dao.WisComShowDao"%>
<%@page import="com.lpl.pojo.ArticleCom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lpl.dao.WisShowDao"  %>
<%@ page import="com.lpl.pojo.Article"  %>
<%@ page import="java.util.ArrayList"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String picture=(String)request.getSession().getAttribute("picture");
%>
<!DOCTYPE html>
<html>

<head>
<base href=" <%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Admin</title>
  <link rel="stylesheet" href="res/layui/css/layui.css"   media="all">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">个人博客-后台管理</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="<%=picture %>" class="layui-nav-img">
          管理员
        </a>
      </li>
      <li class="layui-nav-item"><a href="">退出</a></li>
    </ul>
  </div>
  
   <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree">
        <li class="layui-nav-item  layui-nav-itemed">
          <a  href="admin.jsp">用户权限管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">文章</a>
          <dl class="layui-nav-child">
            <dd><a href="jsp/admin/ArticleManager.jsp">文章库管理</a></dd>
            <dd><a href="jsp/admin/CommentManager.jsp">评论库管理</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  
  
  
  
	<div class="layui-body" style="padding: 15px;">
    <!-- 内容主体区域 -->
    <!-- <div style="padding: 15px;">内容主体区域</div> -->
    
    <%
      ArrayList<ArticleCom> coms =  new WisComShowDao().getcomInfo();
 	  if (coms == null){
 		 coms = new ArrayList<ArticleCom>();
 	  }
 	  int p = coms.size();
 	%>
 				
       
          	 评论库数量: <span><%=coms.size() %></span>
       
       	<div class="layui-form">
  			<table class="layui-table">
  			<colgroup>
     			<col width="60">
      			<col width="30">
      			<col width="90">
      			<col width="200">
      			<col width="200">
      			<col width="100">
      			<col width="90">
    		</colgroup>
    		<thead>
      		<tr>
       			<th>编号</th>
       			<th>ID</th>
       			<th>评论者</th>
       			<th>内容</th>
       			<th>所属文章</th>
        		<th>时间</th>
        		<th>操作</th>
      		</tr> 
    		</thead>
    		<tbody>
 			<%
 				for (ArticleCom com:coms){			 
 			%>
 						
 				<tr>
 					<td><%=p%></td>
        			<td><%=com.getArticleComId()%></td>
        			<td><%=com.getArticleComName()%></td>
        			<td><%=com.getArticleComContent()%></td>
        			<td><a href="detail.jsp?articleid=<%=com.getArticleId()%>" target="_blank"><%=com.getArticleTitle()%></a></td>
        			<td><%=com.getArticleComDate()%></td>
        			<td><a href="DeleteComServlet?flag=admin&comID=<%=com.getArticleComId()%>">删除</a></td>
      			</tr>
     		<%
     			p--;
     		}
     		
     		%>
     		</tbody>
     		</table>
     	</div> 
	</div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script src="res/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>