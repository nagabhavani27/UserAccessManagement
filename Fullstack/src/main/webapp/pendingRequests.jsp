<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Request" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pending Requests</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #2196F3;
            color: white;
        }
        button {
            padding: 5px 10px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button.approve {
            background-color: #4CAF50; /* Green */
        }
        button.reject {
            background-color: #f44336; /* Red */
        }
    </style>
</head>
<body>

<h2>Pending Access Requests</h2>
<table>
    <tr>
        <th>Employee Name</th>
        <th>Software Name</th>
        <th>Access Type</th>
        <th>Reason</th>
        <th>Action</th>
    </tr>
    <%
        // Assuming you set a request attribute with the list of requests
        List<Request> pendingRequests = (List<Request>) request.getAttribute("pendingRequests");

        if (pendingRequests != null) {
            for (Request requestItem : pendingRequests) {
    %>
                <tr>
                    <td><%= requestItem.getEmployeeName() %></td>
                    <td><%= requestItem.getSoftwareName() %></td>
                    <td><%= requestItem.getAccessType() %></td>
                    <td><%= requestItem.getReason() %></td>
                    <td>
                        <form action="ApproveRequestServlet" method="post" style="display:inline;">
                            <input type="hidden" name="requestId" value="<%= requestItem.getId() %>">
                            <button type="submit" class="approve">Approve</button>
                        </form>
                        <form action="RejectRequestServlet" method="post" style="display:inline;">
                            <input type="hidden" name="requestId" value="<%= requestItem.getId() %>">
                            <button type="submit" class="reject">Reject</button>
                        </form>
                    </td>
                </tr>
    <%
            }
        } else {
    %>
            <tr>
                <td colspan="5" style="text-align:center;">No pending requests available.</td>
            </tr>
    <%
        }
    %>
</table>

</body>
</html>
