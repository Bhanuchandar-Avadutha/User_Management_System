<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
      text-align: center;
    }

    h2 {
      color: red;
    }

    .message {
      color: green;
      font-size: 18px;
    }

    button, a {
      margin-top: 20px;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      text-decoration: none;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    button:hover, a:hover {
      background-color: #45a049;
    }

    form {
      margin-top: 20px;
    }
    
    input[type="submit"] {
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      background-color: #008CBA;
      color: white;
      border: none;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
      background-color: #007bb5;
    }
  </style>
</head>
<body>

<div class="container">
  <h2>Profile Page</h2>
  
  <!-- Message from the server (e.g., from JSP) -->
  <div class="message">${msg}</div>
  
  <!-- Button to show user details -->
  <form action="showuserdetails">
    <input type="submit" value="Show User Details"/>
  </form>

  <!-- Link to sign-in page -->
  <button><a href="Login.jsp">Sign-In</a></button>
</div>

</body>
</html>