<%@page import="com.entity.Entity"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UpdateDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma : AllItems</title>
<%@include file="allcomp/allcss.jsp" %>
</head>
<body style="background-color: #B2BEB5">
<%@include file="allcomp/navbar.jsp" %>

<table class="table table-striped" border="2px">
  <thead class="bg-primary text-white" style="bold">
    <tr>
      <th scope="col">Item id</th>
      <th scope="col">Image</th>
      
      <th scope="col">Item Name</th>
      <th scope="col">Desc</th>
      <th scope="col">Price</th>
      <th scope="col">Status</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
            
    </tr>
  </thead>
  <tbody>
  
  <%
  UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
  List<Entity> ent = dao.getEntity();
  
  for(Entity t:ent){
  %>
   
  <tr>
  <th scope="row"><%=t.getId()%></th>
  <td><img src="userImages/<%=t.getPhotoadd()%> "
  style =" width: 80px; height: 80px; "></td>
  
  
  <td><%=t.getItemname() %></td>
  <td><%=t.getDesc() %></td>
  <td><%=t.getPrice() %></td>
  <td><%=t.getStatus() %></td>

  <td>
  <a href="edit.jsp?id=<%=t.getId()%>" class="btn btn-sm btn-success"><i class="fa-regular fa-pen-to-square"></i>  Edit</a>
  </td>
  <td>
    <a href="delete?id=<%=t.getId() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>  Delete</a>
  </td>
  </tr>
  
  
  <%
  } 
  
  %>
 
  
 
    
        
  </tbody>
</table>

</body>
</html>