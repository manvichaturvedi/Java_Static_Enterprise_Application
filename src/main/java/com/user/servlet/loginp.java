package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class loginp extends HttpServlet{
	


	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   
		
	
		
		try
		{
			 UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			jakarta.servlet.http.HttpSession session=req.getSession();

			String email = req.getParameter("username");
			String password = req.getParameter("pass");
			 if("chatmanvi5@gmail.com".equals(email) && "13456".equals(password))
			 {   User us =new User();
			     us.setName("Manvi Chaturvedi");
             	

				 session.setAttribute("userobj",us);
			     

				 resp.sendRedirect("home.jsp");
			 }else{
                    User us=dao.login(email, password);
                    if(us!=null) {
                   

                    	session.setAttribute("userobj", us);

                    	resp.sendRedirect("index1.jsp");
                    	return;
                    }
                    else {
                    	session.setAttribute("failedMsg","Invalid Email or Password ");
                    	resp.sendRedirect("Login.jsp");
                    	
                    }
				 resp.sendRedirect("home.jsp");
			 }
				 
			 
		}
		catch(Exception e) {
			e.printStackTrace();
			
	

		}
	
	}
}
