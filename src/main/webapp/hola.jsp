<%@page import="com.centroestudios.Database" %>
<html>
<head>
    <title>Esto non debería verse</title>
</head>
<body>
<h1>Se se ve esto, mal</h1>
    <%=Database.getMariaDBDAOFactory().createDB()%>

    <script>
        console.log("Hola que tal?");
    </script>
</body>
</html>