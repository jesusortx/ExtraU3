<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar Sesión</title>
    <jsp:include page="./layouts/head.jsp"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/feather-icons@4.31.0/dist/feather.min.css">
</head>
<body class="bg-light">

<div class="container">
    <div class="row justify-content-center align-items-center vh-100">
        <div class="col-md-4">
            <div class="card shadow">
                <div class="card-body">
                    <h3 class="text-center mb-4">Iniciar sesión</h3>
                    <form id="loginForm" action="/api/auth" class="needs-validation" novalidate method="post">
                        <div class="mb-3">
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="text" class="form-control" name="correo" id="correo" placeholder="name@example.com" required>
                            <div class="invalid-feedback">
                                Por favor ingresa un correo válido.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="contrasena" class="form-label">Contraseña</label>
                            <input type="password" name="contrasena" class="form-control" id="contrasena" placeholder="Password" required>
                            <div class="invalid-feedback">
                                Por favor ingresa una contraseña.
                            </div>
                        </div>
                        <div class="mb-3 d-grid">
                            <button id="login" class="btn btn-primary btn-lg" type="submit">
                                <i data-feather="log-in"></i> Iniciar Sesión
                            </button>
                            <a href="/views/registrar-users.jsp" class="btn btn-secondary">Registrarse</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="./layouts/footer.jsp"/>
<script src="./assets/js/bootstrap.bundle.min.js"/>
<script>
    feather.replace();
    const form = document.getElementById("loginForm");
    const btn = document.getElementById("login");
    form.addEventListener('submit', event => {
        btn.innerHTML = `<div class="spinner-border" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>`;
        btn.classList.add("disabled");
        if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();
            btn.classList.remove("disabled");
            btn.innerHTML = `<i data-feather="log-in"></i> Iniciar Sesión`;
        }
        form.classList.add('was-validated');
    }, false);
    if (!${param['result']}) {
        Swal.fire({
            title: 'Acceso denegado',
            text: '${param['message']}',
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
    }
</script>
</body>
</html>
