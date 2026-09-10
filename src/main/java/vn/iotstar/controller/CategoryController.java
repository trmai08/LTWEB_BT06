package vn.iotstar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.iotstar.entity.Category;
import vn.iotstar.service.CategoryService;

import java.util.List;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("")
    public String list(Model model,
                       @RequestParam(value="keyword", required=false) String keyword) {
        List<Category> categories;
        if(keyword != null && !keyword.isBlank()) {
            categories = categoryService.search(keyword);
        } else {
            categories = categoryService.findAll();
        }
        model.addAttribute("categories", categories);
        model.addAttribute("keyword", keyword);
        return "admin/category-list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("category", new Category());
        return "admin/category-add";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Category category) {
        categoryService.save(category);
        return "redirect:/admin/category";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        model.addAttribute("category", categoryService.findById(id));
        return "admin/category-edit";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute Category category) {
        categoryService.save(category);
        return "redirect:/admin/category";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        categoryService.delete(id);
        return "redirect:/admin/category";
    }
}
