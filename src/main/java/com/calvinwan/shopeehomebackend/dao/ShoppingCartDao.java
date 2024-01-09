package com.calvinwan.shopeehomebackend.dao;

import com.calvinwan.shopeehomebackend.dto.shopping_cart.ShoppingCart;

public interface ShoppingCartDao {
    ShoppingCart getShoppingCart(String userId);

    void updateShoppingCart(String userId, ShoppingCart shoppingCart);
}
