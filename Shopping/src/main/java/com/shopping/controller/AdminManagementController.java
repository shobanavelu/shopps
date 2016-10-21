package com.shopping.controller;

import com.shopping.model.Item;
import com.shopping.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;;

/*
 *Only for admin Role
 *This controller is used to add, edit and delete items.
*/

@Controller
@RequestMapping("/admin")
public class AdminManagementController {

    private Path path;
    private List<String> categoryList;

    @Autowired
    private ItemService itemService;
    /*
     * addItem method is used to add a item.
     */
    
    public List<String> addCategoryList()
    {
    	categoryList = new ArrayList<String>();
    	categoryList.add("Formal Shirts");
    	categoryList.add("Casual Shirts");
    	categoryList.add("Jeans");
    	categoryList.add("Formal Shoes");
    	categoryList.add("Sports Shoes");
    	
    	return categoryList;

    }
    
    
    @RequestMapping("/item/addItem")
    public String addItem(Model model) {
    	addCategoryList();
    	Item item = new Item();
    	//item.setItemStatus("active");

        model.addAttribute("item", item);
        model.addAttribute("categoryList", categoryList);

        return "addItem";
    }
    /*
     * addItemPost method is used to add a item and it is calling to addItem method internally.
     */
    @RequestMapping(value="/item/addItem", method = RequestMethod.POST)
    public String addItemPost(@Valid @ModelAttribute("item") Item item, BindingResult result,
                                 HttpServletRequest request,Model model) {
    	
    	addCategoryList();

        model.addAttribute("categoryList", categoryList);

        if(result.hasErrors()) {
            return "addItem";
        }

        itemService.addItem(item);

        MultipartFile itemImage = item.getItemImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+item.getItemId()+".png");


        if (itemImage != null && !itemImage.isEmpty()) {
            try {
            	itemImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("item image saving failed.", e);
            }
        }

        return "redirect:/admin/additems";
    }
    /*
     * editItem method is used to edit a item.
     */
    @RequestMapping("/item/editItem/{id}")
    public String editItem(@PathVariable("id") int id, Model model) {
    	addCategoryList();

        model.addAttribute("categoryList", categoryList);
    	Item item = itemService.getItemById(id);

        model.addAttribute("item", item);

        return "editItem";
    }
    /*
     * editItemPost method is used to edit a item.and it is calling to editItem method internally
     */
    @RequestMapping(value="/item/editItem", method = RequestMethod.POST)
    public String editItemPost(@Valid @ModelAttribute("item") Item item, BindingResult result,
                                 HttpServletRequest request,Model model) {
    	addCategoryList();

        model.addAttribute("categoryList", categoryList);
        
        if(result.hasErrors()) {
            return "editItem";
        }

        MultipartFile itemImage = item.getItemImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+item.getItemId()+".png");

        if (itemImage != null && !itemImage.isEmpty()) {
            try {
            	itemImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Item image saving failed.", e);
            }
        }

        itemService.editItem(item);

        return "redirect:/admin/additems";
    }
    /*
     * deleteItem method is used to delete a item.
     */
    @RequestMapping("/item/deleteItem/{id}")
    public String deleteItem(@PathVariable int id, Model model, HttpServletRequest request) {
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + id + ".png");

        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        Item item = itemService.getItemById(id);
        itemService.deleteItem(item);

        return "redirect:/admin/additems";
    }
}
