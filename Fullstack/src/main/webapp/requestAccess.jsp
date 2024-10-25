<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Request Access</title>
    <style>
        /* Basic styles for form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type="text"], textarea, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #1976D2;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Request Access</h2>
    <form action="RequestServlet" method="post">
        <label for="softwareName">Software Name:</label>
        <select name="softwareName" id="softwareName" required>
            <option value="Software1">Software 1</option>
            <option value="Software2">Software 2</option>
            <option value="Software3">Software 3</option>
        </select>
        <label for="accessType">Access Type:</label>
        <select name="accessType" id="accessType" required>
            <option value="Read">Read</option>
            <option value="Write">Write</option>
            <option value="Admin">Admin</option>
        </select>
        <textarea name="reason" placeholder="Reason for Request" rows="4" required></textarea>
        <button type="submit">Submit Request</button>
    </form>
</div>

</body>
</html>
