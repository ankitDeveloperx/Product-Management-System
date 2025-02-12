<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product Information</title>
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
        background-color: #6a11cb;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: #2575fc;
    }
    
</style>
</head>
<body>
    <div class="container">
        <h2>Update Product Information</h2>
        <form action="update">
            <!-- Field to Update -->
            <label for="field">Select Field to Update:</label>
            <select id="field" name="field" required>
                <option value="" disabled selected>Choose an option</option>
                <option value="ProductBatchNo">BatchNo</option>
                <option value="ProductName">Product Name</option>
                <option value="ProductPrice">Price</option>
                <option value="ProductBrand">Brand</option>
                <option value="ProductQuantity">Quantity</option>
            </select><br><br>

            <!-- New Value -->
            <label for="newValue">New Value:</label>
            <input type="text" id="newValue" name="newValue" placeholder="Enter new value" required><br><br>

            <!-- Condition for WHERE Clause -->
            <label for="conditionField">Based on Field </label>
            <select id="conditionField" name="conditionField">
                <option value="ProductBatchNo" selected>BatchNo</option>
                <option value="ProductName">Product Name</option>
                <option value="ProductPrice">Price</option>
                <option value="ProductBrand">Brand</option>
                <option value="ProductQuantity">Quantity</option>               
            </select><br><br>

            <!-- Condition Value -->
            <label for="conditionValue">Based on Field Value:</label>
            <input type="text" id="conditionValue" name="conditionValue" placeholder="Enter condition value"><br><br>

            <!-- Submit Button -->
            <button type="submit">Update</button>
        </form>
    </div>
    
</body>
</html>