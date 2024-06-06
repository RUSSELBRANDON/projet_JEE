<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <style>
        
.editer{
    background-color: orange;
    font-size: 16px;
    padding: 5px;
    color: white;
    border-radius: 5px;
    width: 60px;
    font-family: Arial, Helvetica, sans-serif;
}

.editer:hover{
    background-color: orange;
    color: white;
}


.supprimer{
    background-color: red;
    font-size: 16px;
    padding: 5px;
    color: white;
    border-radius: 5px;
    width: 60px;
    font-family: Arial, Helvetica, sans-serif;
}

.supprimer:hover{
    background-color: red;
    color: white;
}

.entete{
    background-color: blue;
    color: white;
}

/* Style for alternating row colors excluding the first row */
tbody tr:nth-child(even):not(:first-child) {
    background-color: #f2f2f2;
}

tbody tr:nth-child(odd):not(:first-child) {
    background-color: white;
}

    </style>
    <title>User Management Application</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/style.css' />" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="body">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
            <div>
                <a href="https://www.javaguides.net" class="navbar-brand">UserManagement App</a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="row">
        <div class="container">
            <h3 class="text-center">List of Users</h3>
            <hr>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr class="entete">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Telephone</th>
                        <th>Filiere</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.name}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.telephone}" /></td>
                            <td><c:out value="Informatique" /></td>
                            <td>
                                <a class="editer" href="edit?id=<c:out value='${user.id}' />">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="supprimer" href="delete?id=<c:out value='${user.id}' />">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
