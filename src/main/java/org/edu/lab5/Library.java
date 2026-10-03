package org.edu.lab5;

import java.util.ArrayList;
import java.util.List;

/**
 * Источник данных: книги, выданные читателям библиотеки.
 */
public final class Library {
    private Library() {
    }

    /**
     * Возвращает список книг, выданных читателю.
     *
     * @param reader ФИО читателя
     * @return список книг; пустой список, если читатель не найден
     */
    public static List<Book> booksOf(String reader) {
        List<Book> books = new ArrayList<>();
        if ("Иванов И.И.".equals(reader)) {
            books.add(new Book("Булгаков", "Мастер и Маргарита", true));
            books.add(new Book("Достоевский", "Преступление и наказание", true));
            books.add(new Book("Толстой", "Война и мир", false));
        } else if ("Петрова П.П.".equals(reader)) {
            books.add(new Book("Толстой", "Анна Каренина", false));
            books.add(new Book("Достоевский", "Игрок", true));
        }
        return books;
    }
}
