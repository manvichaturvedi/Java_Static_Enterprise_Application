package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.UpdateDAO;
import com.DB.DBConnect;
import com.entity.Entity;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/update_items")
@MultipartConfig
public class AddUpdateServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	         
		
		String Name=req.getParameter("nameit");
		String  description=req.getParameter("descri");
		String money=req.getParameter("money");
		String status=req.getParameter("status");
		jakarta.servlet.http.Part part=req.getPart("photo");
		String photoname = part.getSubmittedFileName();
		
		Entity b = new Entity();
		b.setItemname(Name);
		b.setDesc(description);
		b.setPrice(photoname);
		b.setStatus(status);
		b.setPhotoadd(photoname);
		
	
		
  		
		
		System.out.println(Name + " " +description + " " + money + " " +status + " " + photoname);
		
		UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
		
	    boolean f=dao.addUpdate(Name,description, money, status,photoname);
		
		jakarta.servlet.http.HttpSession session = req.getSession();
		if(f) {
			String path = getServletContext().getRealPath("") + "userImages";
			File file = new File(path);
			part.write(path + File.separator + photoname);
			
			
			
			session.setAttribute("sucMsg", "item added successfully!!!!");
			resp.sendRedirect("Updateitem.jsp");
		}
		else {
			session.setAttribute("failedMsg", "item added unsuccessfully!!!!");

			
			resp.sendRedirect("Updateitem.jsp");


		}

	}

}
