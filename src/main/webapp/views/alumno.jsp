<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Alumno" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<%!List<Alumno> als;

    {
        try {
            als = daoFactory.getAlumnoDAO().getAll(daoFactory.getConnection());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
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
        <% for(Alumno al: als){
            out.print("<tr>"+
                    "<td>"+al.getNumExp()+"</td>"+
                    "<td>"+al.getDni()+"</td>"+
                    "<td>"+al.getNombre()+"</td>"+
                    "<td>"+al.getApellidos()+"</td>"+
                    "<td>"+al.getFecha()+"</td>"+
                    "</tr>");
        }%>
    </tbody>
</table>
</body>
</html>
