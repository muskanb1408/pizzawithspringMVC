
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
                background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-gourmet-food-pizza-background-template-image_160185.jpg'); /* Replace with the actual URL of your image */
       background-size: cover;
        background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333333;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #ffffff;
            background-color: #4caf50;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .button:hover {
            background-color: #45a049;
        }
        .button-secondary {
            background-color: #008CBA;
        }
        .button-secondary:hover {
            background-color: #007B9A;
        }
</style>
</head>
<body>
<div class="container">
<h1>Welcome to Order Management</h1>
	<a href="${pageContext.request.contextPath}/LoadPizzaOrder.html" class="button">Save Order</a><br><br>
	<a href="${pageContext.request.contextPath}/LoadBillRangeReport.html" class="button button-secondary">Order Report</a><br/><br/><br/>

</div>
</body>
</html>