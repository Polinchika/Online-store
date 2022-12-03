package com.example.onlinestore.services;

import com.example.onlinestore.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID, "Ring 1", "made of beads", 50, "Rings", "Buy"));
        products.add(new Product(++ID, "Necklace 1", "made of beads", 500, "Necklaces", "Buy"));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product. setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id))
                return product;
        }
        return null;
    }
}
