package com.monomay;



import java.util.List;

public interface UserDao {
    void saveUser(Sign user);
    List<Sign> getAllUsers();
    Sign getUserById(Long id);
    void deleteUser(Long id);
    Sign findByUsername(String username);  
}
