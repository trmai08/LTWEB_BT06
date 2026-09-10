package vn.iotstar.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.iotstar.entity.User;
import vn.iotstar.repository.UserRepository;
import vn.iotstar.service.UserService;



@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserRepository userRepository;



    @Override
    public List<User> findAll() {

        return userRepository.findAll();

    }



    @Override
    public User findById(Integer id) {

        return userRepository.findById(id)
                .orElse(null);

    }



    @Override
    public User save(User user) {

        return userRepository.save(user);

    }



    @Override
    public void delete(Integer id) {

        userRepository.deleteById(id);

    }



    @Override
    public List<User> search(String keyword) {

        return userRepository
                .findByUsernameContainingIgnoreCaseOrEmailContainingIgnoreCase(
                        keyword,
                        keyword
                );

    }


}