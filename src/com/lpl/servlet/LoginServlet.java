package com.lpl.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lpl.dao.LoginDao;
import com.lpl.util.DbUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
    	this.doPost(request, response);
    	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int identity = Integer.parseInt(request.getParameter("identity"));
		//System.out.println(identity);
		String userName = (String)request.getParameter("userName");
		String userPassword = (String) request.getParameter("userPassword");
        	LoginDao log = new LoginDao();
    		if(log.check(userName,userPassword,identity)!=0) {
    			DbUtil db=new DbUtil();
    			try {
    			String sql="SELECT user_picture,permission FROM user where user_id="+"'"+log.check(userName,userPassword,identity)+"'";
    			Connection conn;
					conn = db.getCon();
					Statement st = conn.createStatement();
	                ResultSet rs = st.executeQuery(sql);
	                if(rs.next())
	                {
	                	if(rs.getInt("permission")!=3) {
	                		request.getSession().setAttribute("permission",rs.getInt("permission")+"");
	                		request.getSession().setAttribute("picture", rs.getString("user_picture"));
	                	}
	                	else {
	                		request.setAttribute("permission","dj");
	                		request.getRequestDispatcher("login.jsp").forward(request, response);
	                		return;
	                	}
	                		
	                }
	                
	               // System.out.println(rs.getString("user_picture"));
				} catch (Exception e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
    			if(identity==0){
    				request.getSession().setAttribute("userID", log.check(userName,userPassword,identity));
        			request.getSession().setAttribute("userName", userName);
        			request.getRequestDispatcher("person.jsp").forward(request, response);
        			return;
    			}
    			else
    				request.getSession().setAttribute("userID", log.check(userName,userPassword,identity));
    				request.getSession().setAttribute("userName", userName);
    				request.getRequestDispatcher("admin.jsp").forward(request, response);
    				return;
    		}
    		else{
    			request.setAttribute("ps","false");
        		request.getRequestDispatcher("login.jsp").forward(request, response);
        		return;
        	}	
		
	}

}
