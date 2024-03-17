<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 등록</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            padding: 20px;
        }
        h2 {
            color: #4D774E;
            text-align: center;
        }
        form {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 20px auto;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0 20px;
            border: 1px solid #B7E4C7;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #40916C;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2D6A4F;
        }
    </style>
</head>
<body>

<h2>상품 등록 </h2>

<form action="/product/register" method="post">
    <div>
        <label for="name">상품 이름:</label>
        <input type="text" id="name" name="name">
    </div>
    <div>
        <label for="price">가격:</label>
        <input type="number" id="price" name="price">
    </div>
    <div>
        <label for="stock_quantity">재고 수량:</label>
        <input type="number" id="stock_quantity" name="stock_quantity">
    </div>
    <div>
        <input type="submit" value="상품 등록">
    </div>
</form>

</body>
</html>