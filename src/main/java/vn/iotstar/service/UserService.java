package vn.iotstar.service;


import java.util.List;

import vn.iotstar.entity.User;


public interface UserService {


    List<User> findAll();


    User findById(Integer id);


    User save(User user);


    void delete(Integer id);


    List<User> search(String keyword);

}