<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 450px;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    .button-container {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }
    .button-container a {
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .button-container a:hover {
        background-color: #0056b3;
    }
    
     footer{
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background: grey;
    color: black;
    text-align: center;
    height:fit-content;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Product Management System</h1>
        <div class="button-container">
            <a href="createProduct.jsp">Create Product</a>
            <a href="allProducts">View All Products</a>
            <a href="updateProduct.jsp">Update Product</a>
            <a href="deleteProduct.jsp">Delete Product</a>
        </div>
    </div>
    
    <footer>
    	<p>Copyright © 2025 Ankit Kumar ®</p>
    </footer>
</body>
</html>
