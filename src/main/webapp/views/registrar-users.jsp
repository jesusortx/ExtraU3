<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de usuarios</title>
    <jsp:include page="/layouts/head.jsp"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/feather-icons@4.31.0/dist/feather.min.css">
</head>
<body>
    <div class="container mt-3"></div>
    <h1>Registro</h1>
    <form action="ServletUser" method="post" class="bg-light p-4 rounded"></form>
    <label class="form-label">Nombre</label>
    <input type="text" name="nombre" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Apellidos</label>
        <input type="text" name="apellidos" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">CURP</label>
        <input type="text" name="curp" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Fecha de Nacimiento</label>
        <input type="date" name="fechaNacimineto" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Correo</label>
        <input type="email" name="correo" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Contraseña</label>
        <input type="password" name="contrasena" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Estado</label>
        <select name="status" class="form-select">
            <option value="activo">Activo</option>
            <option value="inactivo">Inactivo</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Registrar</button>
    <a href="/index.jsp" class="btn btn-secondary">Iniciar Sesión</a>
    </form>
    </div>
</body>
</html>

