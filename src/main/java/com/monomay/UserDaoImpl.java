package com.monomay;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void saveUser(Sign user) {
        getCurrentSession().saveOrUpdate(user);
    }

    @Override
    public List<Sign> getAllUsers() {
        return getCurrentSession().createQuery("from Sign", Sign.class).list();
    }

    @Override
    public Sign getUserById(Long id) {
        return getCurrentSession().get(Sign.class, id);
    }

    @Override
    public void deleteUser(Long id) {
        Sign user = getUserById(id);
        if (user != null) {
            getCurrentSession().delete(user);
        }
    }

    @Override
    public Sign findByUsername(String username) {
        return getCurrentSession().createQuery("from Sign where username = :username", Sign.class)
                .setParameter("username", username)
                .uniqueResult();
    }
}
