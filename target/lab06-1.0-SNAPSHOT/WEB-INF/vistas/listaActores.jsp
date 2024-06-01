<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.lab06.model.beans.Actor" %>
<%@ page import="com.example.lab06.model.beans.Pelicula" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Actores de <%= request.getAttribute("nombrePelicula") %></title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container">
            <h1 class="mt-4">Actores de <%= request.getAttribute("nombrePelicula") %></h1>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Año de Nacimiento</th>
                        <th>Premio Oscar</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Actor> listaActores = (List<Actor>) request.getAttribute("listaActores");
                        for (Actor actor : listaActores) {
                    %>
                    <tr>
                        <td><%= actor.getNombre() %></td>
                        <td><%= actor.getApellido() %></td>
                        <td><%= actor.getAnoNacimiento() %></td>
                        <td><%= actor.isHaGanadoOscar() ? "Sí" : "No" %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

    </body>
</html>
