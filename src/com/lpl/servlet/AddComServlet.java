package com.lpl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lpl.dao.AddDao;
import com.lpl.pojo.ArticleCom;

/**
 * Servlet implementation class AddComServlet
 */
@WebServlet("/AddComServlet")
public class AddComServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComServlet() {
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
		int userID=(int)request.getSession().getAttribute("userID");
		int articleId=Integer.parseInt(request.getParameter("articleId"));
		String notecomcontent=request.getParameter("ComContent");
		ArticleCom articlecom=new ArticleCom();
		articlecom.setArticleComName(username);
		articlecom.setArticleComContent(notecomcontent);
		articlecom.setArticleId(articleId);
		articlecom.setUserId(userID);
		//System.out.println(username+userID+articleId+notecomcontent);
		new AddDao().AddArticleCom(articlecom);
		request.getRequestDispatcher("/friend.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
