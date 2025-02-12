<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    table {
        width: 80%;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 0px 10px 0px #000;
        
    }
    th, td {
        padding: 10px;
        border: 1px solid #000;
        text-align:center;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .button-container {
        margin: 20px;
        margin-left:70%;
    }
    .button-container a {
        text-decoration: none;
        color: #fff;
        background-color: green;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .button-container a:hover {
        background-color: #006400;
    }
    .icon{
    	font-size:25px;
    }
</style>
</head>
<body>

    <%
    ResultSet rs = (ResultSet) request.getAttribute("rs");
    %>

    <table>
        <thead>
            <tr>
                <th>Batch No</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Brand</th>
                <th>Quantity</th>
                <th>Update</th>         
                <th>Delete</th>                
            </tr>
        </thead>
        <tbody>
            <%
            if (rs != null) {
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("ProductBatchNo") %></td>
                <td><%= rs.getString("ProductName") %></td>
                <td><%= rs.getString("ProductPrice") %></td>
                <td><%= rs.getString("ProductBrand") %></td>
                <td><%= rs.getString("ProductQuantity") %></td>
				<td><a href="updateProduct.jsp"><button class="icon">🛠️</button></a></td>           
				<td><a href="delete1?productBatch=<%=rs.getString("ProductBatchNo")%>"><button class="icon">❌</button></a></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="7" style="text-align:center;">No products found</td>
            </tr>
            <%
            }
            %>
            
        </tbody>
    </table>

	<div class="button-container">
        <a href="createProduct.jsp">Create Product</a>
    </div>
</body>
</html>
