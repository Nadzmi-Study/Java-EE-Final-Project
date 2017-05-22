package com.seladanghijau.controller;

import com.seladanghijau.controller.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("orders")
public class OrdersController {
    // TODO: 5/20/2017 - init binder: void [initialize orderTime format]

    // TODO: 5/20/2017 - listOfOrders(): List @ModelAttribute("orderList") [list all orders in dropdown box]
    // TODO: 5/20/2017 - listOfOrdersByUserId(): List @ModelAttribute("orderListByUserId") [list all orders by id in dropdown box]
    // TODO: 5/20/2017 - registerNewOrder(newOrder: Orders @ModelAttribute("orders")): ModelAndView
}
