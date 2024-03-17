<%--
  Created by IntelliJ IDEA.
  User: kuy06
  Date: 2024-03-17
  Time: 오후 7:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>상품 수정</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            padding: 20px;
        }
        h2 {
            color: #4D774E; /* 짙은 초록색 */
            text-align: center;
        }
        form {
            background-color: #FFFFFF; /* 폼 배경색 */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 20px auto;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #B7E4C7; /* 입력 필드 테두리 - 연한 초록색 */
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #40916C; /* 버튼 배경색 - 진한 초록색 */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background 0.3s ease;
            display: inline-block;
        }
        input[type="submit"]:hover {
            background-color: #2D6A4F; /* 버튼 호버 색상 - 더 진한 초록색 */
        }
        a {
            color: #40916C; /* 링크 색상 - 진한 초록색 */
            text-decoration: none;
            padding: 5px 10px;
            margin-top: 20px;
            display: inline-block;
            border-radius: 5px;
            border: 1px solid #40916C;
            margin-right: 10px;

        }
        a:hover {
            background-color: #40916C;
            color: white;
        }
        .footer-links {
            text-align: center;
            margin-top: 20px;
        }
        .footer-links a {
            margin: 0 10px;
        }
    </style>
</head>
<body>

<h2>상품 수정</h2>

<form action="/product/modify" method="post">
    <input type="hidden" id="id" name="id" value="${dto.id}"/>

    <div>
        <label for="name">상품 이름:</label>
        <input type="text" id="name" name="name" value="${dto.name}" required/>
    </div>
    <div>
        <label for="price">가격:</label>
        <input type="number" id="price" name="price" value="${dto.price}" required/>
    </div>
    <div>
        <label for="stock_quantity">재고 수량:</label>
        <input type="number" id="stock_quantity" name="stock_quantity" value="${dto.stock_quantity}" required/>
    </div>
    <div>
        <input type="submit" value="수정"/>
    </div>
</form>

<div class="footer-links">
    <a href="/product/list">목록으로 돌아가기</a>
</div>

</body>
</html>
