package com.seladanghijau.controller;


import com.seladanghijau.controller.service.FoodService;
import com.seladanghijau.controller.service.OrderService;
import com.seladanghijau.model.FoodTypes;
import com.seladanghijau.model.Foods;
import com.seladanghijau.model.Orders;
import com.seladanghijau.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class MainController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView mainPage() { return new ModelAndView("index"); }

    // MODEL
    @ModelAttribute("foodList")
    public List<Foods> getFoodList() { return FoodService.getAllFoods(); }
    @ModelAttribute("foodTypeList")
    public List<FoodTypes> getFoodTypeList() { return FoodService.getAllFoodTypes(); }
    @ModelAttribute("orderList")
    public List<Orders> listOfOrders() { return OrderService.getAllOrders(); }
    @ModelAttribute("orderListByUserId")
    public List<Orders> listOfOrdersByUserId(@SessionAttribute("user") Users user) { return OrderService.getOrdersByUserId(user.getId()); }

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
