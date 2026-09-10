package vn.iotstar.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.iotstar.entity.Category;
import vn.iotstar.repository.CategoryRepository;
import vn.iotstar.service.CategoryService;



@Service
public class CategoryServiceImpl implements CategoryService {


    @Autowired
    private CategoryRepository categoryRepository;



    @Override
    public List<Category> findAll() {

        return categoryRepository.findAll();

    }



    @Override
    public Category findById(Integer id) {

        return categoryRepository.findById(id)
                .orElse(null);

    }



    @Override
    public Category save(Category category) {

        return categoryRepository.save(category);

    }



    @Override
    @Transactional
    public void delete(Integer id) {

        categoryRepository.deleteProductsByCategoryId(id);
        categoryRepository.deleteById(id);

    }



    @Override
    public List<Category> search(String keyword) {

        return categoryRepository
                .findByCateNameContainingIgnoreCase(keyword);

    }

}