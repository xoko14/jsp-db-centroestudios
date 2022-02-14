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
        daoFactory.getDepartamentoDAO().newDepartamento(
                daoFactory.getConnection(),
                name
        );
        out.print("Departamento \""+name+"\" creado.");
    }
    else {
        out.print("Error creando departamento.");
    }
%>
</body>
</html>
