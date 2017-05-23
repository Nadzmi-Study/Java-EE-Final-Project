package com.seladanghijau.controller;

import com.seladanghijau.controller.service.OrderService;
import com.seladanghijau.model.Orders;
import com.seladanghijau.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("orders")
public class OrdersController {
    /*
     * Method
     *  -   listOfOrders(): List @ModelAttribute("orderList") [list all orders in dropdown box]
     *  -   listOfOrdersByUserId(): List @ModelAttribute("orderListByUserId") [list all orders by id in dropdown box]
     *  -   registerNewOrder(newOrder: Orders @ModelAttribute("orders"), result: BindingResult): ModelAndView
     */

    // TODO: 5/20/2017 - init binder: void [initialize orderTime format]

    @ModelAttribute("orderList")
    public List listOfOrders() { return OrderService.getAllOrders(); }

    @ModelAttribute("orderListByUserId")
    public List listOfOrdersByUserId(@ModelAttribute("user") Users user) { return OrderService.getOrdersByUserId(user.getId()); }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView registerNewOrder(@ModelAttribute("order") Orders newOrder, BindingResult result) {
        ModelAndView mavUser;
        Long newOrderId;

        if(result.hasErrors())
            return new ModelAndView("user/order-food");

        newOrderId = OrderService.addNewOrders(newOrder);
        mavUser = new ModelAndView("user/user-profile");

        mavUser.addObject("message", "New order(id: " + newOrderId + ") has been placed.");

        return mavUser;
    }
}
