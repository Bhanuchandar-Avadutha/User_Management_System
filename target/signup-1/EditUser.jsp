<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User Details</title>
  <style>
   body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .edit-container {
      background-color: white;
      border: 2px solid transparent;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 300px;
    }
    

    .edit-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .edit-container input {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #000s;
      border-radius: 4px;
    }

    .edit-container input[type="submit"] {
      background-color: blue;
      color: white;
      border: none;
      cursor: pointer;
    }

    .edit-container input[type="submit"]:hover {
      background-color: blue;
    }
  </style>
</head>
<%-- <body>
<center>
<h2 style="color: red;">Edit-Details</h2>
<form action="updateuser">
UserId: <input type="text" name="userId" value="${userdetails.userId}"/><br><br>
UserName: <input type="text" name="userName" value="${userdetails.userName}"/><br><br>
Password: <input type="text" name="password" value="${userdetails.password}"/><br><br>
City: <input type="text" name="city" value="${userdetails.city}"/><br><br>
Mobile: <input type="text" name="mobile" value="${userdetails.mobile}"/><br><br>

<input type="submit" value="UPDATE"/><br><br>

Click here <a href="ShowUserDetails.jsp">Login page</a></form>
</center>
</body> --%>
<body>

  <div class="edit-container">
    <h2>Edit Details</h2>
    <form action="updateuser">
     
UserId:<input type="text" id="userId" name="userId" value="${userdetails.userId}" /><br>
UserName:<input type="text" id="userName" name="userName" value="${userdetails.userName}" /><br>
Password:<input type="text" id="password" name="password" value="${userdetails.password}" /><br>
City:<input type="text" id="city" name="city" value="${userdetails.city}" /><br>
Mobile:<input type="text" id="mobile" name="mobile" value="${userdetails.mobile}" /><br>
      
      <input type="submit" value="UPDATE" /><br>
      
      Click here to go to <a href="Login.jsp">Sign-In</a>
    </form>
  </div>

</body>
</html>