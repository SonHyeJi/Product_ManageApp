<%--
  Created by IntelliJ IDEA.
  User: kuy06
  Date: 2024-03-17
  Time: 오후 6:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>상품 목록</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            /*background-color: #EBF5EB; !* 초록색 계열의 파스텔 배경색 *!*/
            color: #333;
            padding: 20px;
        }
        h2 {
            color: #4D774E; /* 짙은 초록색 */
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #B7E4C7; /* 파스텔 그레이 */
        }
        th {
            background-color: #D4E6D4; /* 파스텔 헤더 배경색 */
            color: #495057;
        }
        tr:hover {
            background-color: #F1F3F5; /* 호버 효과 */
        }
        a {
            color: #40916C; /* 초록색 링크 */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            padding: 6px;
            margin-right: 10px;
            border: 1px solid #B7E4C7; /* 입력 필드 테두리 */
            border-radius: 4px; /* 둥근 모서리 */
        }
        input[type="submit"] {
            padding: 6px 12px;
            background-color: #40916C; /* 버튼 배경색 */
            color: white;
            border: none;
            border-radius: 4px; /* 둥근 모서리 */
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2D6A4F; /* 버튼 호버 배경색 */
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

<h2>상품 목록</h2>

<!-- 검색 폼 추가 -->
<form action="/product/search" method="get">
    <div>
        <label for="searchString">상품 이름 검색:</label>
        <input type="text" id="searchString" name="searchString" required/>
        <input type="submit" value="검색"/>
    </div>
</form>

<table>
    <tr>
        <th>상품번호</th>
        <th>상품이름</th>
        <th>가격</th>
        <th>재고 수량</th>
    </tr>
    <c:forEach var="product" items="${dtoList}">
        <tr>
            <td><a href="listOne?id=${product.id}">${product.id}</a></td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.stock_quantity}</td>
        </tr>
    </c:forEach>
</table>

<div class="footer-links">
    <a href="/product/list">전체 목록</a> |
    <a href="/product/register">상품 등록</a>
</div>

</body>
</html>
