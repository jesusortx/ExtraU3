<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/08/2023
  Time: 04:35 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consulta de instructores</title>
    <jsp:include page="/layouts/head.jsp"/>
    <h1 class="mb-5">Instructores</h1>
    <table class="table table-striped">
        <thead>
<tr>
    <th>id</th>
    <th>Nombre</th>
    <th>Apellidos</th>
    <th>Curp</th>
    <th>Fecha de Nacimiento</th>
    <th>Correo</th>
    <th>Status</th>
</tr>
        </thead>
        <tbody>
<c:foreach var="instructor" items="${instructor}">
    <tr>
        <td>${instructor.id}</td>
        <td>${instructor.name}</td>
        <td>${instructor.surname}</td>
        <td>${instructor.curp}</td>
        <td>${instructor.dob}</td>
        <td>${instructor.email}</td>
        <td>${instructor.status}</td>
    </tr>
</c:foreach>
        </tbody>
    </table>
    <a href="" class="btn btn-secondary">Volver</a>
</head>
<body>

</body>
</html>
