<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Películas</title>
  </head>
  <body>
    <h1>Listado de Películas</h1>

    <table border="1">
      <tr>
        <th>Título</th>
        <th>Director</th>
        <th>Año de Publicación</th>
        <th>Rating</th>
        <th>Box Office</th>
        <th>Género</th>
      </tr>
      <c:forEach var="pelicula" items="${listaPeliculas}">
        <tr>
          <td>${pelicula.titulo}</td>
          <td>${pelicula.director}</td>
          <td>${pelicula.anoPublicacion}</td>
          <td>${pelicula.rating}/10</td>
          <td>${pelicula.boxOffice}</td>
          <td>${pelicula.genero}</td>
          <td><a href="viewPelicula.jsp?id=${pelicula.id}">Ver Detalles</a></td>
        </tr>
      </c:forEach>
    </table>

    <h2>Buscar Película</h2>
    <form action="PeliculaServlet" method="get">
      <input type="text" name="buscar" placeholder="Buscar por título...">
      <input type="submit" value="Buscar">
    </form>
  </body>
</html>
