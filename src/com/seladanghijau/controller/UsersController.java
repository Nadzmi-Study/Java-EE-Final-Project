package com.seladanghijau.controller;

import com.seladanghijau.controller.service.UserService;
import com.seladanghijau.model.Admins;
import com.seladanghijau.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("users")
public class UsersController {
    /*
     * Methods
     *  -   registerNewUser(newUser: Users @ModelAttribute("users"), result: BindingResult): ModelAndView
     *  -   login(params: String @RequestParam): ModelAndView
     *  -   logout(): ModelAndView
     */

    // TODO: 5/20/2017 - iniBinder: void

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
    public ModelAndView login(@RequestParam Map<String, String> params) {
        ModelAndView mavFailed;

        String login, password;
        Admins tempAdmin;

        login = params.get("login");
        password = params.get("password");

        tempAdmin = UserService.getAdminsByLoginAndPAssword(login, password); // find in admin table
        if(tempAdmin != null) { // admin found
            ModelAndView mavAdmin;

            mavAdmin = new ModelAndView("admin/admin-profile");
            mavAdmin.addObject("admin", tempAdmin);

            return mavAdmin; // goto admin page
        } else { // if user is not admin
            Users tempUser;

            tempUser = UserService.getUsersByLoginAndPassword(login, password); // find in user table
            if(tempUser != null) { // user found
                ModelAndView mavUser;

                mavUser = new ModelAndView("user/user-profile");
                mavUser.addObject("user", tempUser);

                return mavUser; // goto user page
            }
        }

        // is user not found, return error
        mavFailed = new ModelAndView("index");
        mavFailed.addObject("error", "Wrong login or password.");

        return mavFailed; // go back to index
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ModelAndView logout() {
        return new ModelAndView("index");
    }
}
