<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="shortcut icon" href="https://raw.githubusercontent.com/Ruzder/grupal/main/icono.com%20(1).png">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js " integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM " crossorigin="anonymous "></script>
    <link href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css" rel="stylesheet" type="text/css">
    <title>Ver 1 capacitacion</title>
</head>
<!----         Cuerpo      de     la  pagina      ---->

<body>
    <header class="container-fluid bg-primary d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6"> Contactanos +56 9 3641 7409 </p>
    </header>
    <jsp:include page="menu.jsp"></jsp:include>
    <!-- imagen principal -->

    <div class="fondo">
        <h1>Zurita & Seguridad</h1>
        <h2>Somos seguridad y bienestar de tus equipos de trabajo</h2>
    </div>
    <!-- cuerpo de trabajo  -->
    <div class="container">
        <div class="contact-box">
            <div class="left"></div>
            <div class="right">
                <h2>Ver Capacitacion</h2>
                
                <div class="mb-3">
					<label for="rut" class="form-label">ID</label>
					<c:out value="${c.getId()}"></c:out>
				</div>
				<div class="mb-3">
					<label for="rut" class="form-label">rutCliente</label>
					<c:out value="${c.getRutCliente()}"></c:out>
				</div>
				
				<div class="mb-3">
					<label for="dia" class="form-label">dia</label>
					<c:out value="${c.getDia()}"></c:out>
				</div>
				<div class="mb-3">
					<label for="hora" class="form-label">hora</label>
					<c:out value="${c.getHora()}"></c:out>
				</div>
				<div class="mb-3">
					<label for="lugar" class="form-label">lugar</label>
					<c:out value="${c.getLugar()}"></c:out>
				</div>
				<div class="mb-3">
					<label for="duracion" class="form-label">duracion</label>
					<c:out value="${c.getDuracion()}"></c:out>
				</div>
				
				
                
            </div>
        </div>
    </div>
    <!-- footer  -->
    <footer class="text-center text-white" style="background-color: #f1f1f1;">
        <!-- Grid container -->
        <div class="container pt-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <a class="fs-5 px-3 pt-3" href="#!"><i class="bi bi-facebook"></i
                    ></a>
                <!-- Twitter -->
                <a class="fs-5 px-3 pt-3" href="#!"><i class="bi bi-twitter"></i
                    ></a>
                <!-- Instagram -->
                <a class="fs-5 px-3 pt-3" href="#!"><i class="bi bi-instagram"></i
                    ></a>
            </section>
            <!-- Section: Social media -->
        </div>

        <!-- Copyright -->
        <div class="text-center p-3 fs-5 px-3 text-dark ">
            © 2021 Copyright:
            <p class="text-dark fs-5">Zurita & Seguridad. Todos Los Derechos Reservados 2021</p>
        </div>
        <!-- Copyright -->
    </footer>
    
    <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script type="text/javascript" src="./js/contacto.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

   



</body>

</html>