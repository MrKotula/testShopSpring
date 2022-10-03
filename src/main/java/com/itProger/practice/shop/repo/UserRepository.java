package com.itProger.practice.shop.repo;

import com.itProger.practice.shop.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
    User findById(String userId);
}
