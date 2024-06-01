<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.lab06.model.beans.Pelicula" %>
<%@ page import="com.example.lab06.model.daos.GeneroDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Películas</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container">
            <h1 class="mt-4">Listado de Películas</h1>
            <form class="form-inline mb-4" action="PeliculaServlet" method="post">
                <input type="text" class="form-control mr-sm-2" name="buscar" placeholder="Buscar por título..." value="${param.buscar}">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Buscar</button>
            </form>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Título</th>
                        <th>Director</th>
                        <th>Año de Publicación</th>
                        <th>Rating</th>
                        <th>Box Office</th>
                        <th>Género</th>
                        <th>Actores</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Pelicula> listaPeliculas = (List<Pelicula>) request.getAttribute("listaPeliculas");
                        GeneroDAO generoDAO = new GeneroDAO(); // Instancia de GeneroDAO
                        for (Pelicula pelicula : listaPeliculas) {
                            String nombreGenero = generoDAO.obtenerNombreGeneroPorId(pelicula.getGenero());
                    %>
                    <tr>
                        <td><a href="DetallesServlet?idPelicula=<%= pelicula.getId() %>"><%= pelicula.getTitulo() %></a></td>
                        <td><%= pelicula.getDirector() %></td>
                        <td><%= pelicula.getAnoPublicacion() %></td>
                        <td><%= pelicula.getRating() %>/10</td>
                        <td><%= pelicula.getBoxOffice() %></td>
                        <td><%= nombreGenero %></td>
                        <td><a href="ActorServlet?idPelicula=<%= pelicula.getId() %>&nombrePelicula=<%= pelicula.getTitulo() %>" class="btn btn-primary">Ver Actores</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

    </body>
</html>
