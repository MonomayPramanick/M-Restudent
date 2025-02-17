package com.monomay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    public void saveUser(Sign user) {
        userDao.saveUser(user);
    }

    @Transactional(readOnly = true)
    public List<Sign> getAllUsers() {
        return userDao.getAllUsers();
    }
                                                                                    
    @Transactional(readOnly = true)
    public Sign getUserById(Long id) {
        return userDao.getUserById(id);
    }

    @Transactional
    public void deleteUser(Long id) {
        userDao.deleteUser(id);
    }

    @Transactional(readOnly = true)
    public boolean validateUser(String username, String password) {
        Sign user = userDao.findByUsername(username);
        return user != null && user.getPassword().equals(password);
    }

    @Transactional(readOnly = true)
    public Sign findByUsername(String username) {
        return userDao.findByUsername(username);
    }
}
