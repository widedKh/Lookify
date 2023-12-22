<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Song Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 20px;
        }
        h1 {
            color: #dc3545; /* Change h1 color to a red shade */
            text-align: center;
            margin-bottom: 30px;
        }
        p {
            font-size: 18px;
            margin-bottom: 10px;
        }
        a {
            color: #007bff;
             float:left;
          
        }
        a:hover {
            color: #0056b3;
           
        }
    </style>
</head>
<body>
<div class="container ">
    <h1>Song Details</h1>
    <p><strong>Title:</strong> <c:out value="${song.title}"/></p> 
    <p><strong>Artist:</strong> <c:out value="${song.artist}"/></p> 
    <p><strong>Rating:</strong> <c:out value="${song.rating}"/></p> 
    <p class="mb-5" ><a href="/dashboard">Dashboard</a></p>
</div>
</body>
</html>
