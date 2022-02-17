<%@ page import="com.centroestudios.Database" %>
<%@ page import="com.centroestudios.factory.DAOFactory" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<!-- Instanciamos un DAOFactory -->
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<!-- Añadimos un departamento a la base de datos mediante una inyección de código java -->
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
