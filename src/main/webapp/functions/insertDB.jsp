<%@page import="com.centroestudios.Database" %>
<!DOCTYPE html>
<html>
<head>
    <title>Init DB</title>
</head>
<body>
    <%=Database.getMariaDBDAOFactory().insertDB()%>
</body>
</html>