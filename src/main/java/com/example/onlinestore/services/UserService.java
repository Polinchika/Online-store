package com.example.onlinestore.services;

import com.example.onlinestore.models.Image;
import com.example.onlinestore.models.Product;
import com.example.onlinestore.models.User;
import com.example.onlinestore.models.enums.Role;
import com.example.onlinestore.repositories.ProductRepository;
import com.example.onlinestore.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.Principal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final ProductService productService;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user, MultipartFile file) throws IOException {
        String email = user.getEmail();
        if (userRepository.findByEmail(user.getEmail()) != null)
            return false;
        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_USER);
        Image image;
        if (file != null) {
            image = toImageEntity(file);
        } else {
            MultipartFile file1 = new MockMultipartFile("avatar.png", new FileInputStream(new File("src/main/resources/static/images/avatar.png")));
            image = productService.toImageEntity(file1);
            image.setContentType("image/jpeg");
            image.setOriginalFileName("img.png");
        }
        user.setAvatar(image);
        log.info("Saving new User with email: {}", email);
        userRepository.save(user);
        return true;
    }

    public List<User> list() {
        return userRepository.findAll();
    }

    public void banUser(Long id) {
        User user = userRepository.findById(id).orElse(null); //Получаем юзера или нет
        if (user != null) {
            if (user.isActive()) {
                user.setActive(false);
                log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
            } else {
                user.setActive(true);
                log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
            }
        }
        userRepository.save(user);
    }

    public void changeUserRoles(User user, Map<String, String> form) {
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)//Преобразование ролей в строковый вид
                .collect(Collectors.toSet()); //Преобразование в множество
        user.getRoles().clear(); //Очищаем
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
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

    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void saveUser(List<Product> products, User user) {
        user.setProducts(products);
        userRepository.save(user);
    }

    public List<Product> getProductsByUser(User user, Product product) {
        return user.getProducts();
    }
}
