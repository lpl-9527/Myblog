package com.lpl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lpl.dao.AboutDao;
import com.lpl.pojo.User;;
/**
 * Servlet implementation class UpdateMyinfoServlet
 */
@WebServlet("/UpdateMyinfoServlet")
public class UpdateMyinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMyinfoServlet() {
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
		User user=new User();
		String Email=request.getParameter("Email"); 
		String Tel=request.getParameter("Tel"); 
		String Sex=request.getParameter("Sex"); 
		String Age=request.getParameter("Age"); 
		String Birthday=request.getParameter("Birthday"); 
		String Sig=request.getParameter("Sig"); 
		String Qq=request.getParameter("Qq"); 
		String Hobby=request.getParameter("Hobby"); 
		String wechat=request.getParameter("wechat");
		String aboutme=request.getParameter("aboutme");
		String photo=request.getParameter("user_photo");
		String user_photo=photo.replaceAll("\\\\", "/");
		String UserPhoto=request.getParameter("UserPhoto");
		String touxiang=request.getParameter("TX");
		String tx=request.getParameter("tx");
		String TX=touxiang.replaceAll("\\\\", "/");
		//System.out.println(UserPhoto.replaceAll("\\\\", "\\\\\\\\"));
		user.setUserName(username);
		user.setBirthday(Birthday);
		user.setUserAge(Age);
		user.setUserEmail(Email);
		user.setUserHobby(Hobby);
		user.setUserQq(Qq);
		user.setUserSig(Sig);
		user.setUserTel(Tel);
		user.setUserSex(Sex);
		user.setUserWeChat(wechat);
		user.setAboutMe(aboutme);
		if(user_photo!="") {
			//System.out.println("+++++++"+user_photo);
			user.setUserPhoto(user_photo);
		}
		else {
			//System.out.println("---------"+UserPhoto);
			user.setUserPhoto(UserPhoto);
		}
		if(TX!="") {
			//System.out.println("*************"+TX);
			user.setUserProfilePhoto(TX);
		}
		else {
			//System.out.println("/////////////"+tx);
			user.setUserProfilePhoto(tx);
		}
		new AboutDao().updateUserInfo(user);
		request.getRequestDispatcher("/about.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
