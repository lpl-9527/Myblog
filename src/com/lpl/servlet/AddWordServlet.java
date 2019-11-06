package com.lpl.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.lpl.dao.AddDao;
import com.lpl.pojo.WordLeave;

/**
 * Servlet implementation class AddWordServlet
 */
@WebServlet("/AddWordServlet")
public class AddWordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddWordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String othername=(String)request.getSession().getAttribute("userName");
		String otherid=request.getSession().getAttribute("userID").toString();
		String comcontent = request.getParameter("content");
		String UserID = request.getParameter("UserID");
		//System.out.println(othername+otherid+comcontent+UserID);
		WordLeave word = new WordLeave();
			word.setOtherId(Integer.parseInt(otherid));
			word.setUserId(Integer.parseInt(UserID));
			word.setWordContent(comcontent);
			word.setOtherName(othername);
			AddDao add=new AddDao();
			add.AddWord(word);
			request.getRequestDispatcher("/otherindex.jsp?OtherID="+UserID+"").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
