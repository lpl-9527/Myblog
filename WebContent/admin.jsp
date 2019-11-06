<%@page import="com.lpl.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lpl.dao.AboutDao"  %>
<%@ page import="com.lpl.pojo.User"  %>
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
      <li class="layui-nav-item"><a href="index.jsp">退出</a></li>
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
      ArrayList<User> users =  new AboutDao().getUsers();
 	  if (users == null){
 		 users = new ArrayList<User>();
 	  }
 	  int p = users.size();
 	%>
 				
       
          	 总人数 <span><%=users.size() %>-----说明：修改权限后用户对应功能不能使用！</span>
       
       	<div class="layui-form">
  			<table class="layui-table">
  			<colgroup>
     			<col width="90">
     			<col width="90">
     			<col width="90">
      			<col>
      			<col width="90">
      			<col width="150">
      			<col width="200">
    		</colgroup>
    		<thead>
      		<tr>
      			<th>编号</th>
      			<th>用户ID</th>
       			<th>用户名</th>
        		<th>邮箱</th>
        		<th>当前权限</th>
        		<th>注册时间</th>
        		<th>操作</th>
      		</tr> 
    		</thead>
    		<tbody>
 			<%
 				for (User user:users){			 
 			%>
 						
 				<tr>
 					<td><%=p%></td>
 					<td><%=user.getUserId()%></td>
        			<td><a href="otherindex.jsp?OtherID=<%=user.getUserId()%>"><%=user.getUserName()%></a></td>
        			<td><%=user.getUserEmail()%></td>
        			<td style="color: red;"><%=user.getUserPermisson()%></td>
        			<td><%=user.getUserRegistrationTime()%></td>
        			<td>
        				<form method="post" action="UPpermissionServlet?userId=<%=user.getUserId()%>">
        				<select  name="permission">
        				<option value="0">默认权限</option>
        				<option value="1">禁止发文</option>
        				<option value="2">禁止评论</option>
        				<option value="3">封停帐户</option>
        				</select>
        				<input  type="submit" class="layui-btn" value="提交">
        				</form>
        			</td>	
   	
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
      <script>
		 //Demo
		layui.use('form', function(){
		  var form = layui.form;
		  //从文档上复制的好像没有这句
		  form.render();
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
		});
	</script>
</body>
</html>