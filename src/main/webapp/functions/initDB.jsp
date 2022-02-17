<%@page import="com.centroestudios.Database" %>
<!DOCTYPE html>
<html>
<head>
    <title>Init DB</title>
</head>
<body>
    <!-- Código Java para crear la base de datos -->
    <%=Database.getMariaDBDAOFactory().createDB()%>
</body>
</html>