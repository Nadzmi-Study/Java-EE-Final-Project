package com.seladanghijau.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView mainPage() { return new ModelAndView("index"); }

    // LINKS
    // main
    @RequestMapping(value = "/link/register", method = RequestMethod.GET)
    public ModelAndView registerPage() { return new ModelAndView("register"); }
    @RequestMapping(value = "/link/login", method = RequestMethod.GET)
    public ModelAndView loginPage() { return new ModelAndView("index"); }

    // admin
    @RequestMapping(value = "/link/admin", method = RequestMethod.GET)
    public ModelAndView adminMainPage() { return new ModelAndView("admin/admin-profile"); }
    @RequestMapping(value = "/link/admin/order-list", method = RequestMethod.GET)
    public ModelAndView adminOrderListPage() { return new ModelAndView("admin/order-list"); }
    @RequestMapping(value = "/link/food/add", method = RequestMethod.GET)
    public ModelAndView adminAddFoodPage() { return new ModelAndView("admin/food/add"); }
    @RequestMapping(value = "/link/food/delete", method = RequestMethod.GET)
    public ModelAndView adminDeleteFoodPage() { return new ModelAndView("admin/food/delete"); }
    @RequestMapping(value = "/link/food/edit", method = RequestMethod.GET)
    public ModelAndView adminEditFoodPage() { return new ModelAndView("admin/food/edit"); }
    @RequestMapping(value = "/link/food-type/add", method = RequestMethod.GET)
    public ModelAndView adminAddFoodTypePage() { return new ModelAndView("admin/food-type/add"); }
    @RequestMapping(value = "/link/food-type/delete", method = RequestMethod.GET)
    public ModelAndView adminDeleteFoodTypePage() { return new ModelAndView("admin/food-type/delete"); }
    @RequestMapping(value = "/link/food-type/edit", method = RequestMethod.GET)
    public ModelAndView adminEditFoodTypePage() { return new ModelAndView("admin/food-type/edit"); }

    // user
    @RequestMapping(value = "/link/user", method = RequestMethod.GET)
    public ModelAndView userMainPage() { return new ModelAndView("user/user-profile"); }
    @RequestMapping(value = "/link/user/order-list", method = RequestMethod.GET)
    public ModelAndView userOrderListPage() { return new ModelAndView("user/order-list"); }
    @RequestMapping(value = "/link/order-food", method = RequestMethod.GET)
    public ModelAndView userOrderFoodPage() { return new ModelAndView("user/order-food"); }
}
