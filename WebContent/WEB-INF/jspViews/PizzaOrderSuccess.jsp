<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Success</title>
    <style>
    html, body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #495057;
        margin: 0;
        padding: 0;
        height: 100%;
        background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-gourmet-food-pizza-background-template-image_160185.jpg'); /* Replace with the actual URL of your image */
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 50%;
        text-align: center;
    }

    h2 {
        color: #343a40;
        margin-bottom: 20px;
    }

    h3 {
        color: #28a745;
        margin-bottom: 30px;
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
        <div class="container">
            <h2>Add Pizza Order Details Success</h2>
            <h3>${message}</h3>
            <br><a href="${pageContext.request.contextPath}/index.jsp">Home</a>
        </div>
    </center>
</body>
</html>
