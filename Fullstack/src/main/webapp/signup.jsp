<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="SignUpServlet" method="post" class="signup-form">
    <h2>Sign Up</h2>
    <input type="text" name="username" placeholder="Username" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Sign Up</button>
</form>




</body>
<style>
    /* Container for centering the form */
    .signup-form {
        max-width: 400px;
        margin: 100px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    /* Heading style */
    .signup-form h2 {
        font-size: 28px;
        font-weight: 600;
        color: #333;
        margin-bottom: 20px;
        border-bottom: 2px solid #4CAF50;
        display: inline-block;
        padding-bottom: 10px;
    }

    /* Style for input fields */
    .signup-form input[type="text"],
    .signup-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
    }

    /* Style for the button */
    .signup-form button {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 18px;
    }

    /* Hover effect for button */
    .signup-form button:hover {
        background-color: #45a049;
    }

    /* Placeholder text style */
    .signup-form input::placeholder {
        color: #aaa;
    }
</style>
</html>