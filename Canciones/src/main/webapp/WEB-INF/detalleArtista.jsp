<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Artista</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h1>${artista.nombre} ${artista.apellido}</h1>
    
    <p><strong>Biografía:</strong> ${artista.biografia}</p>

    <h3>Canciones escritas por este artista:</h3>

    <ul>
        <c:forEach var="cancion" items="${artista.listaCanciones}">
            <li>${cancion.titulo} - <em>${cancion.album}</em></li>
        </c:forEach>
    </ul>

    <a href="/artistas"> &#8592; Volver a lista de artistas</a>
</body>
</html>