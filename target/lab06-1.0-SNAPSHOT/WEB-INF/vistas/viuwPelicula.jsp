<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.lab06.model.beans.Pelicula" %>
<%@ page import="com.example.lab06.model.beans.Actor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title><%= ((Pelicula)request.getAttribute("pelicula")).getTitulo() %></title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1 class="mt-4"><%= ((Pelicula)request.getAttribute("pelicula")).getTitulo() %></h1> <!-- Título de la película como cabecera h1 -->

            <table class="table table-striped mt-4">
                <%
                    Pelicula pelicula = (Pelicula) request.getAttribute("pelicula");

                    String[] columnas = {"Id Película", "Título", "Director", "Año de Publicación", "Rating", "Box Office", "Género", "Actores"};
                    String[] datos = {String.valueOf(pelicula.getId()), pelicula.getTitulo(), pelicula.getDirector(), String.valueOf(pelicula.getAnoPublicacion()), String.valueOf(pelicula.getRating() + "/10"), pelicula.getBoxOffice(), pelicula.getGenero(), "<a href='ActorServlet?idPelicula=" + pelicula.getId() + "&nombrePelicula=" + pelicula.getTitulo() + "' class='btn btn-primary'>Ver Actores</a>"};


                    for (int i = 0; i < columnas.length; i++) {
                %>
                <tr>
                    <td><b><%= columnas[i] %></b></td>
                    <td><%= datos[i] %></td> 
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>
