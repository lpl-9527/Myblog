<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lpl.dao.WisShowDao"  %>
<%@ page import="com.lpl.dao.WisComShowDao"  %>
<%@ page import="com.lpl.pojo.Article"  %>
<%@ page import="com.lpl.pojo.ArticleCom"  %>
<%@ page import="java.util.ArrayList"  %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String permission=(String)request.getSession().getAttribute("permission");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>主页</title>
  <link rel="stylesheet" type="text/css" href="css/index.css" />
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
</head>




<body>
		<header>
			<nav class="topnav" id="topnav">
			  <a href="person.jsp"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="friend.jsp"><span style="color: blue;">朋友圈</span><span class="en">Life</span></a>
		  	  <a href="article.jsp"><span>文章管理</span><span class="en">Article</span></a>
		  	  <a href="com.jsp"><span>评论管理</span><span class="en">com</span></a>
		  	  <a href="photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="word_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	 <span><a style="font-size:large;color: orange;" href="index.jsp" >注销</a></span>
		  	</nav>
		</header>
  <div class="header">
    <div class="menu-btn">
      <div class="menu"></div>
    </div>
    <div class="nav">
      <a href="jsp/分类.jsp?sort=1">科技</a>
      <a href="jsp/分类.jsp?sort=2">学术</a>
      <a href="jsp/分类.jsp?sort=3">美文</a>
      <a href="jsp/分类.jsp?sort=4">教育</a>
      <a href="jsp/分类.jsp?sort=5">娱乐</a>
      <a href="jsp/分类.jsp?sort=6">财经</a>
      <a href="jsp/分类.jsp?sort=7">景点</a>
      <a href="jsp/分类.jsp?sort=8">国际</a>
    </div>
    <p class="welcome-text">
    </p>
  </div>

  <div class="content whisper-content">
    <div class="cont">
    
      <%
      ArrayList<Article> articles =  new WisShowDao().getcomInfo();
 	  if (articles == null){
 		 articles = new ArrayList<Article>();
 	  }
 	  int k = 1;
 	  int p = articles.size();
 	  %>
 	  <%
 		for (Article article:articles){	
 			
 	  %>
      <div class="whisper-list">
        <div class="item-box">
          <div class="item">
          <div style="display: inline;"><a href="otherindex.jsp?OtherID=<%=article.getUserID()%>"><img width="50" height="50" alt="" src="<%=article.getUserPicture()%>"></a>
         	 <span style="display: inline;font-size:x-large;color:lime;font-weight:bolder; padding-left:250px;"><%=article.getArticleTitle()%></span>
         	 <span style="color: olive;"><%=article.getArticleSort()%></span>
          </div>
          <div style="color: red;"><%=article.getUserName()%></div><br>
            <div class="whisper-title">
              <i class="layui-icon layui-icon-date"></i><span class="date"><%=article.getArticleDate()%></span>
            </div>
            <p class="text-cont">
             <%=article.getArticleContent()%>
            </p>
            <div class="img-box">
            
              <img style="height: 300px;width:700px; " src="<%=article.getArticlePhoto()%>">
            </div>
            <div class="op-list">
              <p class="like"><i class="layui-icon layui-icon-praise"></i><span><%=article.getArticleLike()%></span></p> 
              <p class="edit"><i class="layui-icon layui-icon-reply-fill"></i><span><%=article.getComCount()%></span></p>
              <p class="off"><span>展开</span><i class="layui-icon layui-icon-down"></i></p>
            </div>
          </div>
          <div class="review-version layui-hide">
              <div class="form">
                <img src="images/系统图片/header2.png">
                
                
                <form class="layui-form" method="post" action="AddComServlet">
                  <div class="layui-form-item layui-form-text">
                    <div class="layui-input-block">
                      <textarea name="ComContent" class="layui-textarea"></textarea>
                      <input type="hidden" name="articleId" value="<%=article.getArticleId()%>"/>
                    </div>
                  </div>
                  <div class="layui-form-item">
                    <div class="layui-input-block" style="text-align: right;">
                      <input onclick="return check();" type="submit" class="layui-btn definite" value="确定"/>
                    </div>
                  </div>
                </form>
                
                
              </div>
              <%
     			 ArrayList<ArticleCom> coms =  new WisComShowDao().getcomInfo(article.getArticleId());
 	 			 if (coms == null){
 						coms = new ArrayList<ArticleCom>();
 				 }
 				 k = coms.size()+1;
 			  %>
 			  <%
 				 for (ArticleCom com:coms){			 
 	 		  %>
              <div class="list-cont">

                <div class="cont">
                  <div class="img">
                   <a href="otherindex.jsp?OtherID=<%=com.getUserId()%>">
                    <img width="50" height="50" src="<%=com.getUserPicture() %>" alt="">
                    </a>
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name"><%=com.getArticleComName() %></span><span class="data"><%=com.getArticleComDate() %></span></p>
                    <p class="ct"><%=com.getArticleComContent()%></p>
                  </div>
                </div>
                <hr>

              </div>
              	<% 
      				}
 	  			%>
          </div>
        </div>
      </div>
      <% 
      	}
 	  %>
    </div>
  </div>
  
  <div class="footer-wrap" style="background:#1003">
    <div class="footer w1000">
     <p style="text-align:center"> blog</p>
     <p style="text-align:center">Welcome to visit  blog</p>
    </div>
  </div>
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <script type="text/javascript">
   layui.config({
      base: 'res/js/util/'
    }).use(['element','laypage','menu'],function(){
      element = layui.element,laypage = layui.laypage,menu = layui.menu;
      laypage.render({
        elem: 'demo'
        ,count: 70 //数据总数，从服务端得到
      });
      menu.init();
      menu.off();
    })
  </script>
  <script>
function check(){
   <%if(permission.equals("2")){%>
     alert("您已被禁止评论!");
     return false;
    <%
   }
   %>
   return true;
}
</script>
</body>
</html>