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
    int dept = Integer.parseInt(request.getParameter("dept"));
    if(!name.isEmpty()){
        daoFactory.getProfesorDAO().newProfesor(
                daoFactory.getConnection(),
                dni, name, apellidos, dept
        );
        out.print("Profesor \""+dni+"\" creado.");
    }
    else {
        out.print("Error creando profesor.");
    }
%>
</body>
</html>
