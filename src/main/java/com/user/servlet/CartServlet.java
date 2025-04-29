package com.user.servlet;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.parser.Entity;

import com.DAO.CartDAOImpl;
import com.DAO.UpdateDAO;
import com.DB.DBConnect;
import com.entity.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			int Iid=Integer.parseInt(req.getParameter("Iid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			
			UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
			com.entity.Entity b =dao.getEntityById(Iid);
			Cart c=new Cart();
			c.setIid(Iid);
			c.setUserId(uid);
			c.setItemName(b.getItemname());
			c.setDescription(b.getDesc());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalprice(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
			boolean f=dao2.addCart(c);
			
			jakarta.servlet.http.HttpSession session = req.getSession();
			
			
			
			if(f)
			{
				session.setAttribute("addCart", "Item added to cart");
				resp.sendRedirect("New.jsp");
			}else {

				session.setAttribute("failed", "Something went wrong on server");
				resp.sendRedirect("New.jsp");			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
