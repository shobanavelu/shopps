package com.shopping.service;

import com.shopping.dao.ItemDao;
import com.shopping.model.Item;
import com.shopping.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemDao itemDao;

    public Item getItemById (int itemId) {
        return itemDao.getItemById(itemId);
    }

    public List<Item> getItemList () {
        return itemDao.getItemList();
    }

    public void addItem(Item item) {
    	itemDao.addItem(item);
    }

    public void editItem(Item item) {
    	itemDao.editItem(item);
    }

    public void deleteItem(Item item) {
    	itemDao.deleteItem(item);
    }
}
