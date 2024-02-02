<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
                     background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-gourmet-food-pizza-background-template-image_160185.jpg'); /* Replace with the actual URL of your image */
       background-size: cover;
        background-repeat: no-repeat;
       
        height: 100vh;
            padding: 0;
        
        }

        center {
            margin-top: 50px;
        }

        h2 {
            color: white;
        }

        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin: 4px 0;
            display: inline-block;
            border: 1px solid #ddd;
            box-sizing: border-box;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        .error {
            color: #e74c3c;
            font-style: italic;
        }
    </style>
</head>
<body>
    <center>
        <h2>Add Pizza Details</h2>
        <form:form modelAttribute="pizzaOrderObj" method="POST"
            action="${pageContext.request.contextPath}/SavePizzaOrder.html">

            <br>

            <table border="2">
                <tr>
                    <th>Customer Name</th>
                    <td><form:input path="customerName" /></td>
                </tr>
                <tr>
                    <th>Customer Contact</th>
                    <td><form:input path="contactNumber" /></td>
                </tr>
                <tr>
                    <th>Pizza Name</th>
                    <td><form:select path="pizzaId">
                            <form:option label="--Select--" value="" />
                            <form:options items="${pizzaNamesAndId}" />
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <th>Quantity</th>
                    <td><form:input path="numberOfPiecesOrdered" /></td>
                </tr>
            </table>
            <br />
            <input type="submit" value="Order" />
            <br />
            <br />
            <a href="${pageContext.request.contextPath}/index.jsp"> Home</a>
            <spring:hasBindErrors name="pizzaOrderObj">
                <h3>All Errors</h3>
                <form:errors path="*"  cssClass="error"/>
            </spring:hasBindErrors>

        </form:form>
    </center>
</body>
</html>
