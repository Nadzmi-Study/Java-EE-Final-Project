package com.seladanghijau.controller.service;

import com.seladanghijau.model.Orders;
import com.seladanghijau.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class OrderService {
    /*
     * Methods
     *  -   getAllOrders(): List
     *  -   getOrdersById(id: Long): Orders
     *  -   getOrdersByUserId(userId: Long): List
     *  -   addNewOrders(newOrder: Orders): Long
     */

    public static List getAllOrders() {
        Session session;
        Transaction transaction;
        List orderList;

        orderList = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Orders.class);

            orderList = criteria.list();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return orderList;
    }

    public static Orders getOrdersById(Long id) {
        Session session;
        Transaction transaction;
        Orders tempOrders;

        tempOrders = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Orders.class);
            criteria.add(Restrictions.eq("id", id));

            tempOrders = (Orders) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return tempOrders;
    }

    public static List getOrdersByUserId(Long userId) {
        Session session;
        Transaction transaction;
        List orderList;

        orderList = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Orders.class);
            criteria.add(Restrictions.eq("userId", userId));

            orderList = criteria.list();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return orderList;
    }

    public static Long addNewOrders(Orders newOrder) {
        Session session;
        Transaction transaction;
        Long id;

        id = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            id = (Long) session.save(newOrder);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return id;
    }
}
