<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register-Page</title>
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

    .register-container {
      background-color: white;
      border: 2px solid transparent;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 300px;
    }

    .register-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .register-container input {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #000s;
      border-radius: 4px;
    }

    .register-container input[type="submit"] {
      background-color: blue;
      color: white;
      border: none;
      cursor: pointer;
    }

    .register-container input[type="submit"]:hover {
      background-color: blue;
    }

    
  </style>
</head>
<body>
<div class="register-container">
<h2 style="color: green;">Sign-Up</h2>
<font color="red">${msg}</font>

<form action="save">
UserId: <input type="text" name="userId" required/>
<br>
UserName: <input type="text" name="userName"/>
<br>
Password: <input type="text" name="password"/>
<br>
City: <input type="text" name="city"/>
<br>
Mobile: <input type="text" name="mobile"/>
<br>
<input type="submit" value="SAVE"/>
</form>
<br>
Click here to go to <a href="Login.jsp">Sign-In</a>
</div>
</body>
</html>
