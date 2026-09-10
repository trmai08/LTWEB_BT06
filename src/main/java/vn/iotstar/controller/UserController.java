package vn.iotstar.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import vn.iotstar.entity.User;
import vn.iotstar.service.UserService;



@Controller
@RequestMapping("/admin/user")
public class UserController {



    @Autowired
    private UserService userService;




    @GetMapping("")
    public String list(
            Model model,
            @RequestParam(value="keyword", required=false)
            String keyword
    ){


        List<User> users;


        if(keyword != null && !keyword.isEmpty()){

            users = userService.search(keyword);

        }
        else{

            users = userService.findAll();

        }



        model.addAttribute(
                "users",
                users
        );


        model.addAttribute(
                "keyword",
                keyword
        );


        return "admin/user/user-list";

    }




    @GetMapping("/add")
    public String add(Model model){


        model.addAttribute(
                "user",
                new User()
        );


        return "admin/user/user-add";

    }




    @PostMapping("/save")
    public String save(
            @ModelAttribute User user
    ){


        userService.save(user);


        return "redirect:/admin/user";

    }





    @GetMapping("/edit/{id}")
    public String edit(
            @PathVariable Integer id,
            Model model
    ){


        model.addAttribute(
                "user",
                userService.findById(id)
        );


        return "admin/user/user-edit";

    }





    @PostMapping("/update")
    public String update(
            @ModelAttribute User user
    ){


        userService.save(user);


        return "redirect:/admin/user";

    }





    @GetMapping("/delete/{id}")
    public String delete(
            @PathVariable Integer id
    ){


        userService.delete(id);


        return "redirect:/admin/user";

    }



}