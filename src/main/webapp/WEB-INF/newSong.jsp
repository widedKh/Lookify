<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Song</title>
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
            color:#691c1c;
            text-align: center;
            margin-bottom: 30px;
        }
        form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-primary {
            background-color: #6c757d; /* Changed to a different shade of blue-gray */
            border: none;
        }
        .btn-primary:hover {
            background-color: #495057;
        }
        a {
            color: #0a4b78;
        }
        a:hover {
            color: #495057;
        }
    </style>
</head>
</head>
<body>
    <h1>Add Song</h1>
    <form:form action="/songs/new" modelAttribute="song" method="post">
        <div class="form-group">
            <form:errors path="title" cssClass="text-danger"/>
            <form:label path="title" for="title">Title:</form:label>
            <form:input path="title" type="text" class="form-control"/>
        </div>
        <div class="form-group">
            <form:errors path="artist" cssClass="text-danger"/>
            <form:label path="artist" for="artist">Artist:</form:label>
            <form:input path="artist" type="text" class="form-control"/>
        </div>
        <div class="form-group">
            <form:errors path="rating" cssClass="text-danger"/>
            <form:label path="rating" for="rating">Rating (1-10):</form:label>
            <form:input path="rating" type="number" class="form-control"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Add</button>
        </div>
    </form:form>
    <p class="text-center"><a href="/dashboard">Dashboard</a></p>
</body>
</html>
