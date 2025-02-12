<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        overflow: hidden;
    }
    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        width: 350px;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
        font-size: 24px;
    }
    input[type="text"], select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 6px;
        font-size: 14px;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #dc3545; /* Red color for delete action */
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: #c82333; /* Darker red on hover */
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
        <h2>Delete Product</h2>
        <form action="delete">
            <!-- Condition for WHERE Clause -->
            <label for="conditionField">Delete Based on Field:</label>
            <select id="conditionField" name="conditionField" required>
                <option value="" disabled selected>Choose an option</option>
                <option value="ProductBatchNo">BatchNo</option>
                <option value="ProductName">Product Name</option>
                <option value="ProductPrice">Price</option>
                <option value="ProductBrand">Brand</option>
                <option value="ProductQuantity">Quantity</option>
            </select><br><br>

            <!-- Condition Value -->
            <label for="conditionValue">Enter Condition Value:</label>
            <input type="text" id="conditionValue" name="conditionValue" placeholder="Enter condition value" required><br><br>

            <!-- Submit Button -->
            <button type="submit">Delete</button>
        </form>
    </div>
    
    <footer>
    	<p>Copyright © 2025 Ankit Kumar ®</p>
    </footer>
</body>
</html>