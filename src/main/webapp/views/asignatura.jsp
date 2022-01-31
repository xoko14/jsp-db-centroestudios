<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Asignatura" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<%!List<Asignatura> list;

    {
        try {
            list = daoFactory.getAsignaturaDAO().getAll(daoFactory.getConnection());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
<table class="table table-striped table-hover">
    <thead>
        <tr>
            <td>borrar</td>
            <td>Nombre</td>
        </tr>
    </thead>
    <tbody>
        <% for(Asignatura item: list){
            out.print("<tr>"+
                    "<td><input class=\"form-check-input\" type=\"checkbox\" id='"+item.getId()+"'></td>"+
                    "<td>"+item.getNombre()+"</td>"+
                    "</tr>");
        }%>
    </tbody>
</table>
</body>
</html>
