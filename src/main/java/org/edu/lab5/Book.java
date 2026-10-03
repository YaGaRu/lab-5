package org.edu.lab5;

/**
 * Книга, выданная читателю.
 */
public class Book {
    private final String author;
    private final String title;
    private final boolean read;

    /**
     * Создаёт описание книги.
     *
     * @param author автор книги
     * @param title  название книги
     * @param read   признак того, что читатель уже прочитал книгу
     */
    public Book(String author, String title, boolean read) {
        this.author = author;
        this.title = title;
        this.read = read;
    }

    /**
     * Возвращает автора книги.
     *
     * @return автор
     */
    public String getAuthor() {
        return author;
    }

    /**
     * Возвращает название книги.
     *
     * @return название
     */
    public String getTitle() {
        return title;
    }

    /**
     * Показывает, прочитана ли книга.
     *
     * @return {@code true}, если книга прочитана
     */
    public boolean isRead() {
        return read;
    }
}
