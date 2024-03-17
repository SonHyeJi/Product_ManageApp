<%--
  Created by IntelliJ IDEA.
  User: kuy06
  Date: 2024-03-17
  Time: 오후 6:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>상품 상세 정보</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            padding: 20px;
        }
        h2 {
            color: #4D774E; /* 상품 목록 페이지의 짙은 초록색과 동일 */
            text-align: center;
        }
        table {
            width: 60%;
            margin: 20px auto; /* 중앙 정렬 */
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #B7E4C7; /* 연한 초록색 */
            text-align: left;
        }
        th {
            background-color: #D4E6D4; /* 연한 초록색 헤더 배경 */
            color: #495057;
        }
        a {
            color: #40916C;
            text-decoration: none;
            padding: 5px 10px;
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

<h2>상품 상세 정보</h2>

<table>
    <tr>
        <th>상품번호</th>
        <td>${dto.id}</td>
    </tr>
    <tr>
        <th>상품이름</th>
        <td>${dto.name}</td>
    </tr>
    <tr>
        <th>가격</th>
        <td>${dto.price}</td>
    </tr>
    <tr>
        <th>재고 수량</th>
        <td>${dto.stock_quantity}</td>
    </tr>
</table>

<div class="footer-links">
    <a href="/product/modify/?id=${dto.id}">수정하기</a>
    <a href="/product/delete/?id=${dto.id}">삭제하기</a>
    <a href="/product/list">목록으로 돌아가기</a>
</div>

</body>
</html>
