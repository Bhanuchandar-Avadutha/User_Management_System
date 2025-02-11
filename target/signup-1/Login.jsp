<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Page</title>
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

    .login-container {
      background-color: white;
      border: 2px solid transparent;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 300px;
    }

    .login-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .login-container input {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #000;
      border-radius: 4px;
    }

    .login-container input[type="submit"] {
      background-color: blue;
      color: white;
      border: none;
      cursor: pointer;
    }

    .login-container input[type="submit"]:hover {
      background-color: blue;
    }
  </style>
</head>
<body>
<div class="login-container">
<h2 style="color:Black ;">Sign-In</h2>
<font color="red">${msg}</font>
<font color="green">${message}</font>
<form action="login"><br><br>
UserId: <input type="text" name="userId"/><br><br>
Password: <input type="text" name="password"/><br><br>
<input type="submit" value="LOGIN"/><br>
</form> 
<br>
        Click here to go to?? <a href="Register.jsp"> Sign-Up </a>
</div>
</body>
</html>