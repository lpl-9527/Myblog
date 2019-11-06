package com.lpl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lpl.dao.AddDao;
import com.lpl.pojo.Article;

/**
 * Servlet implementation class AddArticleServlet
 */
@WebServlet("/AddArticleServlet")
public class AddArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddArticleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String username=(String)request.getSession().getAttribute("userName");
		String userid=request.getSession().getAttribute("userID").toString();
		String title=request.getParameter("title"); 
		String sort=request.getParameter("sort"); 
		String content=request.getParameter("content"); 
		String articlephoto=request.getParameter("articlephoto"); 
		String ArticlePhoto=articlephoto.replaceAll("\\\\", "/");
		Article article=new Article();
		article.setUserID(Integer.parseInt(userid));
		article.setUserName(username);
		article.setArticleTitle(title);
		article.setArticleSort(sort);
		article.setArticleContent(content);
		article.setArticlePhoto(ArticlePhoto);
		new AddDao().AddArticle(article);
		request.getRequestDispatcher("/article.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
