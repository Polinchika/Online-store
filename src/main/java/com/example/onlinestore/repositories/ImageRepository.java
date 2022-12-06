package com.example.onlinestore.repositories;

import com.example.onlinestore.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
