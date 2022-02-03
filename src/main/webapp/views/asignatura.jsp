<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Asignatura" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="../js/createnew.js"></script>
    <script src="../js/backscript.js"></script>
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<table class="table table-striped table-hover">
    <thead>
        <tr>
            <td>borrar</td>
            <td>Nombre</td>
        </tr>
    </thead>
    <tbody>
        <%
            List<Asignatura> list = daoFactory.getAsignaturaDAO().getAll(daoFactory.getConnection());
            for(Asignatura item: list){
            out.print("<tr>"+
                    "<td><input class=\"form-check-input\" type=\"checkbox\" id='"+item.getId()+"'></td>"+
                    "<td>"+item.getNombre()+"</td>"+
                    "</tr>");
        }%>
    </tbody>
</table>
<div>
    <form>
        <label for="nombre" class="form-label">Dar de alta</label>
        <div class="input-group mb-3">
            <input id="nombre" name="nombre" type="text" class="form-control" placeholder="Nombre" aria-label="Username" aria-describedby="basic-addon1">

            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createNew" onclick="newAsignatura()">
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
                <h5 class="modal-title" id="exampleModalLabel">Crear Asignatura</h5>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
