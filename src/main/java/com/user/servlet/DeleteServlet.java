package com.user.servlet;

import java.io.IOException;

import com.DAO.UpdateDAO;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
		boolean f=dao.Deleteitems(id);

		
		jakarta.servlet.http.HttpSession session = req.getSession();
		if(f) {
			
			session.setAttribute("sucMsg", "item deleted successfully!!!!");
			resp.sendRedirect("Updateitem.jsp");
		}
		else {
			session.setAttribute("failedMsg", "item deleted unsuccessfully!!!!");

			
			resp.sendRedirect("Updateitem.jsp");


		}

	}
		

	}
	
	


