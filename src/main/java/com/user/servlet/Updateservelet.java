package com.user.servlet;

import java.io.IOException;

import com.DAO.UpdateDAO;
import com.DB.DBConnect;
import com.entity.Entity;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/update")
@MultipartConfig
public class Updateservelet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String Name=req.getParameter("nameit");
		String  description=req.getParameter("descri");
		String money=req.getParameter("money");
		String status=req.getParameter("status");
		
  		
  		
		
		System.out.println(Name + " " +description + " " + money + " " +status);
		
		UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
		Entity t= new Entity();
		t.setId(id);
		t.setItemname(Name);
		t.setDesc(description);
		t.setPrice(money);
		t.setStatus(status);
	
		
		jakarta.servlet.http.HttpSession session = req.getSession();

		boolean f=dao.updateItems(t);
		if(f) {
			
			session.setAttribute("sucMsg", "item updated successfully!!!!");
			resp.sendRedirect("Updateitem.jsp");
		
			
		} else {
	        session.setAttribute("failedMsg", "item updated unsuccessfully!!!!");
            resp.sendRedirect("Updateitem.jsp");

		}
	}
	

}
