<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Artistas</title>
        <link rel="stylesheet" href="/css/style.css">
    </head>
    <body>
        <h1>Lista de Artistas</h1>

        <ul>
            <c:forEach var="artista" items="${listaArtistas}">
                <li><a href="/artistas/detalle/${artista.id}">${artista.nombre} ${artista.apellido}</a></li>
            </c:forEach>
        </ul>

        <a href="/canciones" class="btn"> &#8592; Ir a canciones</a>

        <a href="/artistas/formulario/agregar" class="btn"> Agregar Artista &#8594;</a>
    </body>
</html>