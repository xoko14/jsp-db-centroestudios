<%@ page import="com.centroestudios.Database" %>
<%@ page import="com.centroestudios.factory.DAOFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<%
    String dni =  request.getParameter("dni");
    String name =  request.getParameter("nombre");
    String apellidos =  request.getParameter("apellidos");
    String fecha = request.getParameter("fecha");
    if(!name.isEmpty()){
        daoFactory.getAlumnoDAO().newAlumno(
                daoFactory.getConnection(),
                dni, name, apellidos, fecha
        );
        out.print("Alumno \""+dni+"\" creado.");
    }
    else {
        out.print("Error creando alumno.");
    }
%>
</body>
</html>
