<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lpl.dao.WisShowDao"  %>
<%@ page import="com.lpl.dao.WisComShowDao"  %>
<%@ page import="com.lpl.pojo.Article"  %>
<%@ page import="com.lpl.pojo.ArticleCom"  %>
<%@ page import="java.util.ArrayList"  %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>系统首页</title>
  <link rel="stylesheet" type="text/css" href="css/系统主页.css">
</head>
<body>
 <p>系统主页 <a href="login.jsp">登录</a></p>
 
  <div class="left">
         <div class="right">
      			 <div >
					<iframe width="250"   height="60"   frameborder="0"  src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
				 </div>
			      <p>最新<span>文章</span></p>
			    <ul >
			      <li><a href="https://www.jj59.com/jjart/430805.html" target="_blank">一场无关风月的故事</a></li>
			      <li><a href="https://www.jj59.com/jjart/424215.html" target="_blank">往事矣矣，珍惜当下</a></li>
			      <li><a href="https://www.jj59.com/jjart/395193.html" target="_blank">江南夜半听雨声</a></li>
			      <li><a href="https://baijiahao.baidu.com/s?id=1607053638552053225&wfr=spider&for=pc" target="_blank">关于华为</a></li>
			      <li><a href="https://baijiahao.baidu.com/s?id=1634382560481986506&wfr=spider&for=pc" target="_blank">美打压华为凸显“纸老虎”本质</a></li>
			      <li><a href="https://baijiahao.baidu.com/s?id=1634871423079306902&wfr=spider&for=pc" target="_blank">华为5G</a></li>
			      <li><a href="http://www.xuexila.com/zw/huati/4131224.html" target="_blank">五四一百周年</a></li>
			    </ul>
			      <p>点击<span>排行</span></p>
			    <ul class="paih">
			      <li><a href="https://news.sina.com.cn/c/2019-05-29/doc-ihvhiqay2148572.shtml" target="_blank">中国的核选项 </a></li>
			      <li><a href="https://tech.sina.com.cn/t/2019-05-28/doc-ihvhiqay1934723.shtml" target="_blank">华为包裹运至美国 </a></li>
			      <li><a href="https://tech.sina.com.cn/d/i/2019-05-28/doc-ihvhiews5104398.shtml" target="_blank">"人类世"真的来了 </a></li>
			      <li><a href="http://video.sina.com.cn/p/news/2019-05-27/detail-ihvhiqay1824154.d.html" target="_blank">关注孙小果涉黑案：“铁案”追踪 </a></li>
			      <li><a href="https://baijiahao.baidu.com/s?id=1634841975815143044&wfr=spider&for=pc" target="_blank"> 华为鸿蒙系统</a></li>
			    </ul>
			      <p>友情<span>链接</span></p>
			    <ul class="website">
			      <li><a href="http://authserver.hlju.edu.cn/authserver/login?service=http%3A%2F%2Fmy.hlju.edu.cn%2Findex.portal">黑大信息门户</a></li>
			    <li><a href="http://www.baidu.com" target="_blank">百度</a></li>
			      <li><a href="https://www.taobao.com/">淘宝</a></li>
			      <li><a href="https://passport.jd.com/new/login.aspx?ReturnUrl=http%3A%2F%2Fhome.jd.com%2F">京东</a></li>
			      <li><a href="https://weibo.com/">新浪微博</a></li>
			      <li><a href="https://qzone.qq.com/">QQ空间</a></li>
			    </ul> 
      </div>
      <%
      ArrayList<Article> articles =  new WisShowDao().getcomInfo();
 	  if (articles == null){
 		 articles = new ArrayList<Article>();
 	  }
 	  %>
 	  <%
 	  int a_id=0;
 		for (Article article:articles){		
 	  %>
 	  
        <div class="articlebox">
              <div>
                <div><img src="<%=article.getArticlePhoto()%>" alt=""></div>
              </div>
              		<span class="title"><%=article.getArticleTitle()%></span>
                    <span class="sort"><%=article.getArticleSort()%></span><br><br>
              <div >
              	作者:<span class=""><%=article.getUserName()%></span>
              </div>
              <div ><br>
                <a  href="detail.jsp?articleid=<%=article.getArticleId() %>" target="_blank"><%=article.getArticleContent().substring(0, 10)%>....</a>
              </div>
         </div>
        <% 
        }
        %>
	</div>

</body>
</html>