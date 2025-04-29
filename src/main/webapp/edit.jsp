<%@page import="com.DAO.UpdateDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Entity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma:Updateitems</title>
<%@include file="allcomp/allcss.jsp" %>
</head>
<body style="background-color: black">
<%@include file="allcomp/nav.jsp" %>
<div class="container mt-4">
<div class="row p-5">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h3 class="text-center text-success"> Add Items From Here!</h3>

<%
int id = Integer.parseInt(request.getParameter("id"));
UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
Entity t=dao.getEntityById(id);
%>

<%
String sucMsg =(String)session.getAttribute("sucMsg");
if(sucMsg!=null){
%>
<div class="alert alert-success text-center" role="alert"><%=sucMsg %>
 
</div>
<%
session.removeAttribute("sucMsg");
} 
%>


<%
String failedMsg =(String)session.getAttribute("failedMsg");
if(failedMsg!=null){
%>
<div class="alert alert-danger text-center" role="alert"><%=failedMsg%>
 
</div>
<%
session.removeAttribute("failedMsg");
} 
%>



   <form action="update" method="post" enctype="multipart/form-data">
   
   <input type="hidden" value="<%=t.getId()%>" name="id">
    <div class="form-group mb-3 mt-3">
      <label for="name">ItemName:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter item name" name="nameit" value="<%=t.getItemname()%>">
    </div>
    <div class=" form-group mb-3">
      <label for="desc">Description:</label>
      <input type="text" class="form-control" id="desc" placeholder="Enter description" name="descri" value="<%=t.getDesc()%>">
    </div>
    
    <div class="form-group mb-3">
      <label for="price">Price:</label>
      <input type="text" class="form-control" id="price" placeholder="Enter price" name="money" value="<%=t.getPrice()%>">
    </div>
    
    <div class="form-group mb-3">
      <label for="inputstatus">Status</label>
      <select id="inputstatus" class="form-control" name="status">
      <%
      if("Pending".equals(t.getStatus()))
      {%>
      
      <option value="Pending">Pending</option>
      <option value="Compelete">Compelete</option>
  
    	  
      <%
      } else{
      %>
      <option value="Compelete">Compelete</option>
      
      <option value="Pending">Pending</option>
       
      <% 
      
      }
      %>
   
      
      </select>
    </div>
    
      
    
 
  
  
    
    
 <div class="text-center">
    <button type="submit" class="btn btn-primary">Update</button></div>
  </form></div>




</div></div></div></div>

</body>
</html>