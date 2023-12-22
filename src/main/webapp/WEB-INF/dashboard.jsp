<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lookify</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <style>
        body {
            padding: 20px;
        }
        .search-form {
            display: flex;
            align-items: center;
        }
        .search-input {
            flex: 1;
            margin-right: 10px;
        }
        .actions-column {
            white-space: nowrap;
        }
        .add-song-btn {
            margin-bottom: 20px;
        }
        .btn-outline-success{
        margin-left:180px;
        margin-top:5px;
        }
        .table-container {
            height: 400px; 
            overflow-y: auto; 
        }
           th {
            background-color: #646970;
            position: sticky;
            top: 0;
        
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a class="btn btn-primary add-song-btn" href="/songs/new">Add Song</a>
                <a class="btn btn-warning add-song-btn" href="/songs/top-ten">Top Songs</a>
            </div>
            <div class="col-md-6">
                <form class="form-inline search-form" action="dashboard" method="post">
                    <input class="form-control search-input" type="text" id="artist" name="artist" placeholder="Search"/>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
       <div class=table-container>
        <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Rating</th>
                    <th class="actions-column">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="song" items="${songs}">
                    <tr>
                        <td><a href="/songs/${song.id}"><c:out value="${song.title}"></c:out></a></td>
                        <td><c:out value="${song.rating}"></c:out></td>
                        <td class="actions-column">
                            <a class="btn btn-danger btn-sm" href="/songs/delete/${song.id}">
                                <c:out value="Delete"></c:out>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
      </div>
    </div>
</body>
</html>
