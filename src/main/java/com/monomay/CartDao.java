package com.monomay;

import java.util.List;

public interface CartDao {
    void saveCart(Cart cart);

    Sign findByUsername(String username);
    Sign findingUser(String username);
    public List<Cart> getallitem() ;
}
