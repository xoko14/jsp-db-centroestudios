<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<html>
<head>
    <title>Test JSP Ajax</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        function initiateFunc() {
            var site = "hola.jsp";
            document.getElementById('jajasi').src = site;
        }
    </script>
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<h2>Hello World!</h2>
<button id="tables" onclick="initiateFunc()">Click On Me</button>
<iframe id="jajasi"></iframe>
</body>
</html>