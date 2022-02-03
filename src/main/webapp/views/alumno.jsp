<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Alumno" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
          rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="../js/createnew.js"></script>
    <script src="../js/backscript.js"></script>
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>

<h2>Hello World!</h2>
<table class="table table-striped table-hover">
    <thead>
    <tr>
        <td>Num. Expediente</td>
        <td>DNI</td>
        <td>Nombre</td>
        <td>Apellidos</td>
        <td>Fecha de nacimmiento</td>
    </tr>
    </thead>
    <tbody>
    <%
        List<Alumno> als = daoFactory.getAlumnoDAO().getAll(daoFactory.getConnection());
        for (Alumno al : als) {
            out.print("<tr>" +
                    "<td>" + al.getNumExp() + "</td>" +
                    "<td>" + al.getDni() + "</td>" +
                    "<td>" + al.getNombre() + "</td>" +
                    "<td>" + al.getApellidos() + "</td>" +
                    "<td>" + al.getFecha() + "</td>" +
                    "</tr>");
        }%>
    </tbody>
</table>
<div>
    <form>
        <label for="nombre" class="form-label">Dar de alta</label>
        <div class="input-group mb-3">
            <input id="dni" name="dni" type="text" class="form-control" placeholder="DNI" aria-label="Username" aria-describedby="basic-addon1">
            <input id="nombre" name="nombre" type="text" class="form-control" placeholder="Nombre" aria-label="Username" aria-describedby="basic-addon1">
            <input id="apellidos" name="apellidos" type="text" class="form-control" placeholder="Apellidos" aria-label="Username" aria-describedby="basic-addon1">
            <input id="date" type="text" class="form-control" placeholder="Fecha de nacimiento">
            <script>
                $('#date').datepicker({format: "yyyy-mm-dd"});
            </script>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createNew"
                    onclick="newAlumno()">
                Crear
            </button>
        </div>
    </form>
</div>

<!--Ventana modal-->
<div class="modal fade" id="createNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Crear Alumno</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <iframe id="backscript-loader"></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="location.reload()">Recargar</button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>
