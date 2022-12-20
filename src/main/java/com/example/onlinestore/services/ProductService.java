package com.example.onlinestore.services;

import com.example.onlinestore.models.Image;
import com.example.onlinestore.models.Product;
import com.example.onlinestore.models.User;
import com.example.onlinestore.repositories.ProductRepository;
import com.example.onlinestore.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    //private List<Product> products = new ArrayList<>();
    private final UserRepository userRepository;

    public List<Product> listProducts(String title) {
        if (title == null || title.isBlank()) return productRepository.findAll();
        return productRepository.findByTitle(title);
    }

    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3,
                            MultipartFile file4, MultipartFile file5, MultipartFile file6) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        Image image4;
        Image image5;
        Image image6;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        if (file4.getSize() != 0) {
            image4 = toImageEntity(file4);
            product.addImageToProduct(image4);
        }
        if (file5.getSize() != 0) {
            image5 = toImageEntity(file5);
            product.addImageToProduct(image5);
        }
        if (file6.getSize() != 0) {
            image6 = toImageEntity(file6);
            product.addImageToProduct(image6);
        }
        log.info("Saving new Product. Title: {}; Instruction: {}", product.getTitle(), product.getInstruction());
        //Устанавливаем превьюшный id фотографии
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public void saveProduct(Principal principal, Product product) {
        product.setUser(getUserByPrincipal(principal));
        log.info("Saving new Product. Title: {}; Instruction: {}", product.getTitle(), product.getInstruction());
        //Устанавливаем превьюшный id фотографии
        productRepository.save(product);
    }
}
