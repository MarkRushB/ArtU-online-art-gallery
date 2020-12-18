package com.artu.service;

import com.artu.entity.Product;
import com.artu.utils.Response;

import java.util.List;


public interface ProductService {
    public Product getProduct(int id);

    public Product getProduct(String name);

    public void addProduct(Product product);

    Response deleteProduct(int id);

    public boolean updateProduct(Product product);

    public List<Product> getProductsByKeyWord(String searchKeyWord);

    public List<Product> getProductsByType(int type);

    public List<Product> getAllProduct();
}
