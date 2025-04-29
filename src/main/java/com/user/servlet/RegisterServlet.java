package com.user.servlet;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regForm")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		try
		{

			String Name=req.getParameter("name");
			String fathername=req.getParameter("fname");
			String Email=req.getParameter("email");
			String Password=req.getParameter("password");
			String Date=req.getParameter("date");
			String Phno=req.getParameter("phno");
	        String Address=req.getParameter("address");
			String Gender=req.getParameter("gender");
			String check=req.getParameter("check");

			
			
			User us=new User();
			us.setName(Name);
			us.setFathername(fathername);
			us.setEmail(Email);
			us.setPassword(Password);
			us.setDate(Date);
			us.setPhno(Phno);
			us.setAddress(Address);
			us.setGender(Gender);
			
			jakarta.servlet.http.HttpSession session=req.getSession();
			
			if(check!=null) {
				UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				 boolean f=dao.userRegister(us);
				 
				 
				 if(f) {
					 //System.out.println("User Register Success...");
						session.setAttribute("sucMsg", "Registeration Successful!!!!");
						resp.sendRedirect("Register.jsp");
					
				 }else {
					 //System.out.println("Something went wrong..");
						session.setAttribute("failedMsg", "Registeration Failed!!!!");
						resp.sendRedirect("Register.jsp");
					
				 }
				 
				
			}else {
				
				session.setAttribute("failedMsg", "Please check agree terms and conditions!!!!");
				resp.sendRedirect("Register.jsp");
			
				//System.out.println("Please check agree terms and conditions");
			}



			 
			 UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			 boolean f=dao.userRegister(us);
			 if(f) {
				 System.out.println("User Register Success...");
			 }else {
				 System.out.println("Something went wrong..");
			 }
			  
         } catch(Exception e)
		{
		  e.printStackTrace();
		  
			 
		}
	}
}
