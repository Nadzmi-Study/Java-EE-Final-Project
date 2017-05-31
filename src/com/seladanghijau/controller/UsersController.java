package com.seladanghijau.controller;

import com.seladanghijau.controller.service.UserService;
import com.seladanghijau.model.Admins;
import com.seladanghijau.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("users")
@SessionAttributes({"user_data", "admin"})
public class UsersController {
    /*
     * Methods
     *  -   getUser(): Users
     *  -   registerNewUser(newUser: Users @ModelAttribute("users"), result: BindingResult): ModelAndView
     *  -   login(params: String @RequestParam): ModelAndView
     *  -   logout(): ModelAndView
     */

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView registerNewUser(@ModelAttribute("user") Users newUser, BindingResult result) {
        ModelAndView modelAndView;

        if(result.hasErrors()) {
            modelAndView = new ModelAndView("register");
            return modelAndView;
        }

        UserService.addNewUsers(newUser);

        modelAndView = new ModelAndView("index");
        modelAndView.addObject("message", "You have been registered.");

        return modelAndView;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(ModelMap mapper, @RequestParam Map<String, String> params) {
        String login, password;
        Admins tempAdmin;

        login = params.get("login");
        password = params.get("password");

        tempAdmin = UserService.getAdminsByLoginAndPassword(login, password); // find in admin table
        if(tempAdmin != null) { // admin found
            mapper.addAttribute("admin", tempAdmin); // setup admin session

            return "redirect:/link/admin"; // goto admin page
        } else { // if user is not admin
            Users tempUser;

            tempUser = UserService.getUsersByLoginAndPassword(login, password); // find in user table
            if(tempUser != null) { // user found
                mapper.addAttribute("user_data", tempUser); // setup user session

                return "redirect:/link/user"; // goto user page
            }
        }

        // if user not found, return error
        mapper.addAttribute("error", "Wrong login or password.");

        return "redirect:/"; // go back to index
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ModelAndView logout() { return new ModelAndView("redirect:/"); }
}
