<%@ page import="com.centroestudios.Database" %>
<%@ page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Asignatura" %><%--
  Created by IntelliJ IDEA.
  User: xoquin.perezblanco
  Date: 03/02/2022
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
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
