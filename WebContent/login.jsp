<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    if((String)request.getAttribute("permission") == "dj")
    {
%>
    <script>
    alert("账号已被冻封停！");
    </script>
<% 
    }
    if((String)request.getAttribute("ps") == "false"){
%>
    <script>
    alert("账号或密码错误！");
    </script>
<%
    }
 %>
<!DOCTYPE html>
<html>
<base href=" <%=basePath%>">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>登录</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
    <script src="res/layui/layui.js"></script>
      <script src="res/layui/layui.all.js"></script>
</head>
<body>
        <div>  
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  				<legend>个人博客登录</legend>
			</fieldset>
        </div>            
<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user">
    <div class="layui-tab layui-tab-brief" > 
      <ul class="layui-tab-title">
        <li class="layui-this">登录</li>
        <li><a href="reg.jsp">注册</a></li>
          <li> <a style="font-size: 15px;color: red;" href="index.jsp">返回主页</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form role="form" method="POST" name="login" id="myform" action="LoginServlet">
  
    <div class="layui-form-item">
        <label class="layui-form-label">身份选择</label>
        <div class="layui-input-block">
            <select name="identity"   >
                <option value="0">普通用户</option>
                <option value="1">管理员</option>
            </select>
        </div>
    </div>
    
              <div class="layui-form-item">
               	<label for="L_username" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                <input type="text" class="layui-input" name="userName" id="L_username" placeholder="Admin..."/>
                </div>
              </div>   
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input class="layui-input" type="password" name="userPassword" placeholder="Password...">
                </div>
              </div>
         
              <div class="layui-form-item">
                <input class="layui-btn" type="submit" name="login" value="登录"/>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>		
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