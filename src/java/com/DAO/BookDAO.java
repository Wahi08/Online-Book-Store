/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.Model.Book;
import com.Model.Cart;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;

/**
 *
 * @author Lenovo
 */
public class BookDAO {
    
    Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost:3306/bookstore";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    
    private static final String INSERT_BOOK_SQL = "INSERT INTO book(title, author, description, category, price, image) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_BOOK_BY_ID = "SELECT * FROM book WHERE id = ?";
    private static final String SELECT_ALL_BOOKS = "SELECT * FROM book";
    private static final String DELETE_BOOK_BY_ID = "DELETE FROM book WHERE id = ?";
    private static final String UPDATE_BOOK_BY_ID = "UPDATE book set title=?, author=?, description=?, category=?, price=?, image=? WHERE id=?";

    public BookDAO() {}
    
    protected Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch(SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    return connection;
    }
    
    public void insertBook(Book book) throws SQLException, IOException {
        System.out.println(INSERT_BOOK_SQL);
        
        //try-with-resource statement will auto close the connection.
        try (Connection con = getConnection(); PreparedStatement ps = 
                con.prepareStatement(INSERT_BOOK_SQL)) {
            
            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setString(3, book.getDescription());
            ps.setString(4, book.getCategory());
            ps.setDouble(5, book.getPrice());
            
            Part filePart = book.getImage();
            InputStream inputStream = null;
            
            if (filePart != null){
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } 
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBlob(6, inputStream);
            }
            
            ps.executeUpdate();
            
        }catch (SQLException e) {
            printSQLException(e);
        }
    }
    
    public Book selectBook(int id) {
        Book book = null;
        
        //Step 1: Establishing a Connection
        try(Connection con = getConnection();
                //Step 2:Create a statement using connection object
                PreparedStatement ps = con.prepareStatement(SELECT_BOOK_BY_ID);) {
            ps.setInt(1,id);
            System.out.println(ps);
            
            //Step 3: Execute the query or update query
            ResultSet rs = ps.executeQuery();
            
            //Step 4: Process the ResultSet object.
            while (rs.next()) {
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String category = rs.getString("category");
                double price = rs.getDouble("price");
                
                book = new Book(id, title, author, description, category, price);
            }
            
        }catch (SQLException e){
            printSQLException(e);
        }
        return book;
    }
    
    public List<Book> selectAllBooks() {
        
        //using try-with-resources to avoid closing resources 
        List<Book> books = new ArrayList<>();
        
        //Step 1: Establishing a Connection
        try(Connection con = getConnection();
                
                //Step 2: Create a Statement using connection object
                PreparedStatement ps = con.prepareStatement(SELECT_ALL_BOOKS);) {
            
            System.out.println(ps);
            
            //Step 3: Execute the query or update query
            ResultSet rs = ps.executeQuery();
            
            //Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String category = rs.getString("category");
                double price = rs.getDouble("price");
                books.add(new Book(id, title, author, description, category, price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return books;       
    }
    
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> books = new ArrayList<>();
        
        try {
            
            Connection con = getConnection();
            
            
            if(cartList.size() > 0) {
                for(Cart item: cartList) {
                    String Query = "SELECT * FROM book where id = ?";
                    PreparedStatement ps = con.prepareStatement(Query);
                    ps.setInt(1, item.getBook().getId());
                    ResultSet rs = ps.executeQuery();
                    
                    while(rs.next()) {
                        Cart row = new Cart();
                        row.getBook().setId(rs.getInt("id"));
                        row.getBook().setTitle(rs.getString("title"));
                        row.getBook().setAuthor(rs.getString("author"));
                        row.getBook().setDescription(rs.getString("description"));
                        row.getBook().setCategory(rs.getString("category"));
                        row.getBook().setPrice(rs.getDouble("price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        books.add(row);
                    }
                    
                }
            }
            
        }catch (Exception e){
            System.out.print(e.getMessage());
            e.printStackTrace();
        }
        return books;
    }
    
    public boolean deleteBook(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection con = getConnection(); PreparedStatement ps = con.prepareStatement(DELETE_BOOK_BY_ID);) {
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateBook(Book book) throws SQLException, IOException {
        boolean rowUpdated;
        try (Connection con = getConnection(); PreparedStatement ps = con.prepareStatement(UPDATE_BOOK_BY_ID);) {
            
            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setString(3, book.getDescription());
            ps.setString(4, book.getCategory());
            ps.setDouble(5, book.getPrice());
            
            Part filePart = book.getImage();
            InputStream inputStream = null;
            
            inputStream = filePart.getInputStream();
            
            ps.setBlob(6, inputStream);
            ps.setInt(7, book.getId());
            
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if(e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while ( t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
         } }
}
