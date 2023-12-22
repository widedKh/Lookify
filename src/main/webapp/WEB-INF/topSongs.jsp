<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Top Ten Songs</title>
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
            color: #dc3545;
            text-align: center;
            margin-bottom: 30px;
            margin-left:400px;
            
        }
        table {
            margin-top: 20px;
         
        }
      
        .table th, .table td {
            text-align: center;
        }
        a {
            color: #007bff;
           
        }
        p a{
         margin-left:400px;
        }
        
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
<div class="d-flex">
    <h1 class="text-center">Top Ten Songs</h1>
    
        <p ><a href="/dashboard">Back to Dashboard</a></p>
   </div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Name</th>
                <th>Artist</th>
                <th>Rating</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="topSong" items="${topTenSongs}">
                <tr>
                    <td><a href="/songs/${topSong.id}"><c:out value="${topSong.title}"/></a></td>
                    <td><c:out value="${topSong.artist}"/></td>
                    <td><c:out value="${topSong.rating}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
