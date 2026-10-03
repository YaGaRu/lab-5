<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.edu.lab5.Book, org.edu.lab5.Library, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Список книг читателя</title>
</head>
<body style="font-family: Arial; margin: 30px">
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");

    // Если имя читателя не задано, управление передаётся странице обработки ошибок
    if (name == null || name.trim().isEmpty()) {
        request.getRequestDispatcher("/ErrorManager.jsp").forward(request, response);
        return;
    }

    List<Book> books = Library.booksOf(name.trim());
    request.setAttribute("books", books);
%>
<h2>Список книг читателя <%= name %></h2>
<%-- Таблица формируется во включаемой странице ListData.jsp --%>
<jsp:include page="ListData.jsp"/>
</body>
</html>
