package com.shopping.service;

import com.shopping.model.Item;

import java.util.List;


public interface ItemService {

    List<Item> getItemList();

    Item getItemById(int id);

    void addItem(Item item);

    void editItem(Item item);

    void deleteItem(Item item);
}
