package com.itProger.practice.shop.controllers;

import com.itProger.practice.shop.models.Item;
import com.itProger.practice.shop.models.User;
import com.itProger.practice.shop.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Set;


@Controller
public class AdminController {

    @Autowired
    private UserRepository userRepository;

    @PreAuthorize("hasAuthority('ADMINISTRATOR')")
    @GetMapping("/admin")
    public String admin(Model model){
    List<User> users = userRepository.findAll();
    model.addAttribute("users", users);
            return "admin";
    }

    @PreAuthorize("hasAuthority('ADMINISTRATOR')")
    @GetMapping("/admin/user-{id}")
    public String userReviews(@PathVariable(value = "id") long userId, Model model){
        User users = userRepository.findById(userId).orElse(new User());
        Set<Item> items = users.getItems();
        if(items.isEmpty()) {
            return "user-empty";
        }
        model.addAttribute("items", items);
        return "user-items";
    }
}
