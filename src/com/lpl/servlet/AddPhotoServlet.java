package com.lpl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lpl.dao.AddDao;
import com.lpl.pojo.Photo;
import com.lpl.pojo.WordLeave;

/**
 * Servlet implementation class AddPhotoServlet
 */
@WebServlet("/AddPhotoServlet")
public class AddPhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String photo_url= request.getParameter("photo");
		String userID=request.getSession().getAttribute("userID").toString();
		String PH=photo_url.replaceAll("\\\\", "/");
		//System.out.println(photo_url+PH+"+++"+userID);
			Photo photo = new Photo();
			photo.setUserId(Integer.parseInt(userID));
			photo.setPhoto(PH);
			AddDao add=new AddDao();
			add.AddPhoto(photo);
			request.getRequestDispatcher("/photo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
