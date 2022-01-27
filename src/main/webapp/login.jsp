<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>

<html>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<h2>Hello World!</h2>
<p><%= daoFactory.getAlumnoDAO().get(daoFactory.getConnection(), 1).getNombre()%></p>
</body>
</html>
