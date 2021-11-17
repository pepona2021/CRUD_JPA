<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js " integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM " crossorigin="anonymous "></script> -->
    <link href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css" rel="stylesheet" type="text/css">
    
    <!-- link PARA LOS ICONOS DE EDITAR Y ELIMINAR -->
    <script src="https://kit.fontawesome.com/8d20d6c8c4.js"
	crossorigin="anonymous"></script>
     <!-- Bootstrap CSS PARA DATATABLE-->
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
     <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
     <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.16/css/jquery.dataTables.min.css' />
    
    <title>Listar Capacitación</title>
</head>

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
    <h4>Listado de Capacitaciones Agendadas</h4>
   
               <!-- cuerpo de trabajo  -->
<table id="example" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Rut Cliente</th>
                <th>Dia</th>
                <th>Hora</th>
                <th>Lugar</th>
                <th>Duracion</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${lista}">

				<tr>
					<td>
					<a href="${pageContext.request.contextPath}/verCap/${c.getId()}">
					<c:out value="${c.getId()}"></c:out></a></td>	
					<td><c:out value="${c.getRutCliente()}"></c:out></td>
					<td><c:out value="${c.getDia()}"></c:out></td>
					<td><c:out value="${c.getHora()}"></c:out></td>
					<td><c:out value="${c.getLugar()}"></c:out></td>
					<td><c:out value="${c.getDuracion()}"></c:out></td>
					
					<td>
					<a href="${pageContext.request.getContextPath()}/editarCapacitacion/${c.getId()}"><i class="fas fa-edit"
											title="Editar usuario"></i></a>
					<a href="${pageContext.request.getContextPath()}/borrar/${c.getId()}"><i
											class="fas fa-trash-alt" title="Eliminar usuario"></i></a>
					</td> 
					
					
				</tr>
				

			</c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Rut Cliente</th>
                <th>Dia</th>
                <th>Hora</th>
                <th>Lugar</th>
                <th>Duracion</th>
            </tr>
        </tfoot>
    </table>



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
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
<!-- LIBRERIAS DATATABLES -->
<script src="${pageContext.request.contextPath}/resources/JS/tabla.js"></script>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.js"></script>

</body>  

</html>