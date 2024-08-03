package com.monomay;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    @Autowired
    private CartDao cartDao;

    @Transactional
    public void saveCart(Cart cart) {
        cartDao.saveCart(cart);
    }

    @Transactional
    public List<Cart> getAllItems() {
        return cartDao.getallitem();
    }

    @Transactional
    public Sign findingUser(String username) {
        return cartDao.findingUser(username);
    }

    @Transactional
    public Sign findByUsername(String username) {
        return cartDao.findByUsername(username);
    }
}
