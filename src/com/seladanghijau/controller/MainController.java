package com.seladanghijau.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView mainPage() {
        return new ModelAndView("index");
    }

    // LINKS
    @RequestMapping(value = "/link/register", method = RequestMethod.GET)
    public ModelAndView registerPage() {
        return new ModelAndView("register");
    }
    @RequestMapping(value = "/link/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        return new ModelAndView("index");
    }
}
