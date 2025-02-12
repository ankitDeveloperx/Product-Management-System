<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Product</title>

	<style>
	        body {
	            font-family: Arial, sans-serif;
	            margin: 10px 50px;
	            background-color: #f4f4f4;
	        }
	        
	        h1{
	        	text-align:center;
	        }
	        form {
	            background: white;
	            padding: 20px;
	            border-radius: 5px;
	            box-shadow: 0px 0px 10px 0px #ccc;
	            max-width: 400px;
	            margin: auto;
	            margin-bottom:10px;
	        }
	        label {
	            font-weight: bold;
	        }
	        input {
	            width: 95%;
	            padding: 8px;
	            margin: 5px 0 15px 0;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	        }
	        button {
	            background-color: #28a745;
	            color: white;
	            padding: 10px;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            width: 100%;
	        }
	        button:hover {
	            background-color: #218838;
	        }
	    </style>
</head>
<body>
	<fieldset>
	<legend><h1>Register Product</h1></legend>
		
		<form action="create">
		
		<label for="product_batch">Product BatchNo:</label>
        <input type="text" id="product_batch" name="product_batch" required><br><br>
        
        <label for="product_name">Product Name:</label>
        <input type="text" id="product_name" name="product_name" required><br><br>

        <label for="product_price">Product Price:</label>
        <input type="number" id="product_price" name="product_price" required><br><br>

        <label for="product_brand">Product Brand:</label>
        <input type="text" id="product_brand" name="product_brand" required><br><br>

        <label for="product_quantity">Product Quantity:</label>
        <input type="number" id="product_quantity" name="product_quantity" required><br><br>

        <button type="submit">Submit</button>
	</fieldset>
</body>
</html>