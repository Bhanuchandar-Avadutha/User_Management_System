<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show User Details</title>
<style>
        table {
            width: 75%;
            border-collapse: collapse;
        }
        th, td {
            border: 2px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>

<script type="text/javascript">
	
	function deleteuser(Id) {

		alert(name + ' delete button triggred!!')
		document.forms[0].action = "${pageContext.request.contextPath}/deleteuser?userId="+Id;
		document.forms[0].method = "post";
		document.forms[0].submit();

	}
	function edituser(Id) {

		alert(Id + ' edit button triggred!!')
		document.forms[0].action = "${pageContext.request.contextPath}/edituser?userId="+Id;
		document.forms[0].method = "post";
		document.forms[0].submit();

	}
</script>
</head>
<body>
<center>
<h2 style="color: darkblack;">* SHOW USER DETAILS *</h2>

<form action="">
		<table border="3">
			<tr>
			<th style="background-color: rgb(80, 62, 218); color: white;">UserId</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">UserName</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">Password</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">City</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">Mobile</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">Edit</th>
			<th style="background-color: rgb(80, 62, 218); color: white;">Delete</th>
			</tr>

			<c:forEach var="user" items="${userdetails}">
				<tr>
					<td>${user.userId}</td>
					<td>${user.userName}</td>
					<td>${user.password}</td>
					<td>${user.city}</td>
					<td>${user.mobile}</td>
					
					<td><input style="background-color:green; color:white; border-radius: 12px; height: 5vh; width: 60px;" type="button" onclick="edituser('${user.userId}')" value="Edit" /></td>
					<td><input  style="background-color:red;color:white; border-radius: 12px; height: 5vh; width: 75px;" type="button" onclick="deleteuser('${user.userId}')" value="Delete" /></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br>
	Click here <a href="Profile.jsp">Profile-Page</a>
	
	</br>
	</center>
</body>
</html>