# WebPerpustakaan

A library management web app built with Java Servlets, JSP, and MySQL. This was a team final project for an object-oriented programming course.

## My contribution

I built the book borrowing and returning flow:

- Readers request to borrow a book, and the request waits for admin approval
- Admins approve or reject borrowing requests
- Readers return books, and late returns are charged a fine of Rp1,000 per day
- The book's availability is updated when it is returned

## Features

**Readers:** register and log in, browse and read books, borrow and return books, see borrowing history, write reviews, keep a wishlist, edit their profile, change their password

**Admins:** add, edit, and delete books, approve borrowing requests, manage users

## Tech stack

- Java Servlets and JSP
- MySQL / MariaDB with JDBC
- Apache Tomcat
- NetBeans (Ant build)

## How to run

1. Create a database named `perpustakaan_db` and import `perpustakaan_db.sql` (for example through phpMyAdmin in XAMPP)
2. Open the `TUBES-PBO-main` folder as a project in NetBeans
3. Make sure Tomcat is set up in NetBeans, then run the project
4. Open `http://localhost:8080/WebPerpustakaan`

The database connection is set in `src/java/classes/JDBC.java` (default user `root` with no password). Sample accounts are included in the SQL file.

## Project structure

- `src/java/model`: classes such as `Pengguna` (abstract user), `Admin`, `Pembaca` (reader), `Buku`, and `Peminjaman`
- `src/java/servlet`: servlets that handle each action
- `web`: JSP pages
