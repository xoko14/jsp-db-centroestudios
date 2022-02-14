<%@page import="com.centroestudios.Database" %>
<%@page import="com.centroestudios.factory.DAOFactory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test JSP Ajax</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="js/backscript.js"></script>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link href="css/nerd-fonts-generated.css" rel="stylesheet">
</head>
<body>
<%!DAOFactory daoFactory = Database.getMariaDBDAOFactory();%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><span class="material-icons">school</span>  Centro Estudios</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="views/alumno.jsp">Alumnos</a>
                <a class="nav-link" href="views/profesor.jsp">Profesores</a>
                <a class="nav-link" href="views/asignatura.jsp">Asignaturas</a>
                <a class="nav-link" href="views/departamento.jsp">Departamentos</a>
            </div>
        </div>
    </div>
</nav>


<div class="container">
    <br>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Proxecto de Tomcat con JSP</h5>
            <h6 class="card-subtitle mb-2 text-muted">Por Carlos Iglesas, David Domínguez e Xoquín Pérez</h6>
            <p class="card-text">Exemplo de visualización de datos dunha BD utilizando JSP.</p>
            <button id="tables" onclick="execute('backscript-loader', 'functions/initDB.jsp')" type="button" class="btn btn-primary">Inicializar base de datos</button>

        </div>
    </div>

    <br>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Código fonte</h5>
            <p class="card-text">Proxecto dispoñible en GitHub</p>
            <a type="button" class="btn btn-primary" href="https://github.com/xoko14/jsp-db-centroestudios" target="_blank">GitHub</a>
        </div>
    </div>

</div>

<iframe id="backscript-loader" style="visibility: hidden; display: none"></iframe>

<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>