<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<%@ page import="com.centroestudios.vo.Departamento" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>
<%!List<Departamento> list;

    {
        try {
            list = daoFactory.getDepartamentoDAO().getAll(daoFactory.getConnection());
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
            <td>Num. profesores</td>
        </tr>
    </thead>
    <tbody>
        <% for(Departamento item: list){
            out.print("<tr>"+
                    "<td><input class=\"form-check-input\" type=\"checkbox\" id='"+item.getId()+"'></td>"+
                    "<td>"+item.getNombre()+"</td>"+
                    "<td>"+item.getNumProf()+"</td>"+
                    "</tr>");
        }%>
    </tbody>
</table>
</body>
</html>
