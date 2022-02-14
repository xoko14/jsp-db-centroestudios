<%@ page import="com.centroestudios.Database" %>
<%@ page import="com.centroestudios.factory.DAOFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Subir asignatura</title>
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
