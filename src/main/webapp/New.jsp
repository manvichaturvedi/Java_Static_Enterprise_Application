<%@page import="com.entity.User"%>
<%@page import="com.entity.Entity"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UpdateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcomp/allcss.jsp" %>

<style type ="text/css">
.crd-ho:hover {
background-color: red;
}

	/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */


</style>

</head>
<body style="background-color: black">
<%@include file="allcomp/nav.jsp" %>



<%
String addCart =(String)session.getAttribute("addCart");
if(addCart!=null){
%>
<div id="toast"><%=addCart%></div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<%
session.removeAttribute("addCart");
} 
%>
<%
String failed =(String)session.getAttribute("failed");
if(failed!=null){
%>
<% 
session.removeAttribute("failed");
} 
%>


<%User u =(User)session.getAttribute("userobj");
%>



<div class="container">
<h3 class="text-center">New Items</h3>
<div class="row">
<%
UpdateDAO dao = new UpdateDAO(DBConnect.getConn());
List<Entity> list = dao.getNewItem();
for(Entity b : list){
%>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="userImages/<%=b.getPhotoadd() %>"
style="width: 150px;height:200px" class="img-thumblin">
<p> <%=b.getItemname() %></p>
<p><%=b.getDesc() %></p>
<div class ="row">
<% 
if(u==null)
	{%>
	<a href="Login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
	<%
	} else {
	%>
	<a href="Cart?Iid=<%=b.getId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
	<% 
	}
	%>
	
<a href="view_items.jsp?Iid=<%=b.getId() %>" class="btn btn-primary btn-sm ml-2">View Details</a>
<a href="" class="btn btn-dark btn-sm ml-2"><%=b.getPrice() %></a></div></div></div></div>
<%
} 
%>
</div></div>

</body>
</html>