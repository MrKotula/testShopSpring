package com.itProger.practice.shop.repo;

import com.itProger.practice.shop.models.Item;
import org.springframework.data.repository.CrudRepository;

public interface ItemRepository extends CrudRepository<Item, Long> {

}
