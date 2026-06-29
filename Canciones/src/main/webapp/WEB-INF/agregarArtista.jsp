<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Artista</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h1>Agregar Artista</h1>
    
    <form:form action="/artistas/procesa/agregar" method="POST" modelAttribute="artista">
        <form:label path="nombre">Nombre:</form:label>
        <form:input type="text" path="nombre"/>
        <form:errors path="nombre"></form:errors>

        <form:label path="apellido">Apellido:</form:label>
        <form:input type="text" path="apellido"/>
        <form:errors path="apellido"></form:errors>

        <form:label path="biografia">Biografía:</form:label>
        <form:textarea path="biografia" rows="4"/>
        <form:errors path="biografia"></form:errors>

        <input type="submit" value="Crear Artista">
    </form:form>
    
    <a href="/artistas"> &#8592; Volver a lista de artistas</a>
</body>
</html>