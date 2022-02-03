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
