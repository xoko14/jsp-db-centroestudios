<%@page import="com.centroestudios.Database"%>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<h2>Hello World!</h2>
<button id="tables">Click On Me</button>
</body>
</html>
<script>
function initiateFunc() {
   $.get('hola.jsp');
}
$( initiateFunc);
</script>