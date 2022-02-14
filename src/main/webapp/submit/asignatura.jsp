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
    String name =  request.getParameter("nombre");
    if(!name.isEmpty()){
        daoFactory.getAsignaturaDAO().newAsignatura(
                daoFactory.getConnection(),
                name
        );
        out.print("Asignatura \""+name+"\" creada.");
    }
    else {
        out.print("Error creando asignatura.");
    }
%>
</body>
</html>
