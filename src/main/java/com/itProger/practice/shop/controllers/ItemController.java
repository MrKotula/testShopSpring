package com.itProger.practice.shop.controllers;

import com.itProger.practice.shop.models.Item;
import com.itProger.practice.shop.repo.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemController {

    @Autowired
    private ItemRepository itemRepository;

    @GetMapping("/add-item")
    public String add(){
        return "add-item";
    }

    @PostMapping("/add-item")
    public String store(@RequestParam String title, @RequestParam String image,
                        @RequestParam String price, @RequestParam String info){
        Item item = new Item(title, info, image, Short.parseShort(price));
        itemRepository.save(item);
        return "redirect:/";
    }
}
