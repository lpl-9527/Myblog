<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<base href=" <%=basePath%>">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>注册</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
</head>
<body>
        <div>  
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  				<legend>个人博客注册</legend>
			</fieldset>
        </div>  
        <br>    
<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user">
    <div class="layui-tab layui-tab-brief" >
      <ul class="layui-tab-title">
        <li><a href="login.jsp">登录</a></li>
        <li class="layui-this">注册</li>
        <li> <a style="font-size: 15px;color: red;" href="index.jsp">返回主页</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form id="form1" name="form1" method="post" action="RegisterServlet">
              <div class="layui-form-item">
               	<label for="L_username" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                <input type="text" class="layui-input" id="username" name="username" placeholder="Admin..."/>
                </div>
              </div>   
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input class="layui-input" type="password" id="pswd1" name="userpassword" placeholder="Password...">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码确认</label>
                <div class="layui-input-inline">
                  <input class="layui-input" type="password" id="pswd2" name="userpassword1" placeholder="Password...">
                </div>    
              </div>
              <div class="layui-form-item">
                <input class="layui-btn" type="submit" onclick="return check();" value="立即注册" />
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    <script>
    function check(){
	   var name=document.getElementById("username");
	   var pswd1=document.getElementById("pswd1");
	   var pswd2=document.getElementById("pswd2");
	   if(name.value==""||name.value.length>10){
	     alert("登录名称不能为空！");
	     return false;
	   }
	   if(pswd1.value==""){
	     alert("密码不能为空！");
	     return false;
	   }

	 if(pswd2.value==""){
	     alert("密码确认不能为空！");
	     return false;
	   }
	   if(pswd1.value!=pswd2.value){
	     alert("两次输入的密码不相同！");
	     return false;
	   }
	   return true;
	}
  </script>	
</body>
</html>