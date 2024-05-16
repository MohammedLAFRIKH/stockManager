package com.example.stockmanager.dao;

import java.sql.SQLException;
import javax.ejb.Remote;
import java.util.List;
import com.example.stockmanager.model.Product;

@Remote
public interface ProductDAO {
    void insertProduct(Product product) throws SQLException;
    
    List<Product> selectAllProduct() throws SQLException;
    
    Product selectProduct(int id) throws SQLException;
    
    void updateProduct(Product product) throws SQLException;
    
    void deleteProduct(Product product) throws SQLException;
    
    double getTotalInventory();
    
    void updateProductQty(Product product) throws SQLException;
    
}
