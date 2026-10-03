<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.edu.lab5.Book, java.util.List" %>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
    if (books == null || books.isEmpty()) {
%>
<p>Читатель не найден или ему не выдано ни одной книги.</p>
<% } else { %>
<table border="1" cellpadding="6" style="border-collapse: collapse">
    <tr><th>Автор книги</th><th>Название книги</th><th>Прочитал</th></tr>
    <% for (Book b : books) { %>
    <tr>
        <td><%= b.getAuthor() %></td>
        <td><%= b.getTitle() %></td>
        <td><%= b.isRead() ? "Да" : "Нет" %></td>
    </tr>
    <% } %>
</table>
<% } %>
