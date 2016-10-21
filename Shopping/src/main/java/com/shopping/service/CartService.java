package com.shopping.service;

import com.shopping.model.Cart;


public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
