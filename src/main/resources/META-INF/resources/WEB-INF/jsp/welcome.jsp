<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
    <head>
        <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
        <title> Welcome Page </title>
    </head>
    <body>
        <%@ include file = "common/navigation.jspf" %>
        <div class = "container">
           <div> <h1> Welcome ${name} </h1> </div>
           <hr>
           <div> <a href="list-todos" class = "btn btn-success">Manage your todos</a></div>
        </div>
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    </body>
</html>