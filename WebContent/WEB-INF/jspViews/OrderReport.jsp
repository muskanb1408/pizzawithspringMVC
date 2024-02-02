<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Order with in Price Range Report</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #495057;
            margin: 0;
             background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-gourmet-food-pizza-background-template-image_160185.jpg'); /* Replace with the actual URL of your image */
       background-size: cover;
        background-repeat: no-repeat;
        height: 100vh;
            padding: 0;
             justify-content: center;
        align-items: center;
            
        }

        center {
            margin-top: 50px;
        }

        h2 {
            color: white;
            margin-bottom: 20px;
        }

        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        input[type="text"], input[type="submit"] {
            width: calc(100% - 16px);
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ddd;
            box-sizing: border-box;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            text-decoration: underline;
            color: #0056b3;
        }
    </style>
</head>
<body>
    <center>
        <h2>Order within Price Range Report</h2>
        <form:form action="FetchRecordsWithinDateRange.html" modelAttribute="billRangeObj">
            <table border="2">
                <tr>
                    <td>From Price:<form:input path="fromPrice" /> </td>
                    <td>To Price:<form:input path="toPrice" /> </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Fetch Details">
            <br>
            <br>
            <br>
            <c:if test="${not empty pizzaOrderList}">
                <table border="2">
                    <tr>
                        <th>Order Id</th><th>Customer Name</th><th>PizzaId</th><th>Bill</th><th>Quantity</th>
                    </tr>
                    <c:forEach items="${pizzaOrderList}" var="itr">
                        <tr>
                            <td><c:out value="${itr.orderId}"/> </td>
                            <td><c:out value="${itr.customerName}"/> </td>
                            <td><c:out value="${itr.pizzaId}"/></td>
                            <td> <fmt:formatNumber value="${itr.bill}" type="currency" currencySymbol="INR."></fmt:formatNumber>
                            </td>
                            <td><c:out value="${itr.numberOfPiecesOrdered}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
        </form:form>
    </center>
</body>
</html>
