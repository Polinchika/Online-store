package com.example.onlinestore.controllers;

import com.example.onlinestore.models.Product;
import com.example.onlinestore.models.User;
import com.example.onlinestore.repositories.UserRepository;
import com.example.onlinestore.services.ProductService;
import com.example.onlinestore.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.Arrays;
import java.util.List;

import static org.aspectj.util.LangUtil.split;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final ProductService productService;
    private final UserRepository userRepository;
    private final UserService userService;


    @GetMapping("/")
    public String home(@RequestParam(name = "searchWord", required = false) String title, Principal principal, Model model) {
        model.addAttribute("products", productService.listProducts(title));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("searchWord", title);
        return "home";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        model.addAttribute("authorProduct", product.getUser());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1,
                                @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3,
                                Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }

    @GetMapping("/product/instruction/{id}")
    public String productInstruction(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "instruction";
    }

    @PostMapping("/product/buy/{id}")
    public String ProductBuy(@PathVariable Long id, Principal principal) {
        Product product = productService.getProductById(id);
        User user = userRepository.findByEmail(principal.getName());
        List<Product> products = user.getProducts();
        products.add(product);
                    System.out.println(Arrays.toString(products.toArray()));
                    //user.setProducts(products);
        userService.saveUser(products, user);
                    //userRepository.save(user);
                    System.out.println(Arrays.toString(user.getProducts().toArray()));
                    System.out.println("Hi");
        return "redirect:/product/{id}";
    }

    @GetMapping("/cart/{user}")
    public String Cart(@PathVariable("user") User user, Principal principal, Model model, Product product) {
        //model.addAttribute("products", user.getProducts());
        model.addAttribute("products", userService.getProductsByUser(user, product));
        model.addAttribute("user", user);
        System.out.println(Arrays.toString(user.getProducts().toArray()));
        return "product-buy";
    }
}
