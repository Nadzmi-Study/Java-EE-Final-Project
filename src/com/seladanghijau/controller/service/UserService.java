package com.seladanghijau.controller.service;

import com.seladanghijau.model.Admins;
import com.seladanghijau.model.Users;
import com.seladanghijau.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class UserService {
    /*
     * Methods:
     *  -   getAdminsById(id: Long): Admins
     *  -   getAdminsByLoginAndPassword(login: String, password: String): Admins
     *
     *  -   getUsersById(id: Long): Users
     *  -   getUsersByLoginAndPassword(login: String, passsword: String): Users
     *  -   addNewUsers(newUser: Users): Long
     */

    public static Admins getAdminsById(Long id) {
        Session session;
        Transaction transaction;
        Admins tempAdmins;

        tempAdmins = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Admins.class);
            criteria.add(Restrictions.eq("id", id));

            tempAdmins = (Admins) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.close();
        }

        return tempAdmins;
    }

    public static Admins getAdminsByLoginAndPassword(String login, String password) {
        Session session;
        Transaction transaction;
        Admins tempAdmins;

        tempAdmins = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Admins.class);
            criteria.add(Restrictions.eq("login", login));
            criteria.add(Restrictions.eq("password", password));

            tempAdmins = (Admins) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.close();
        }

        return tempAdmins;
    }

    public static Users getUsersById(Long id) {
        Session session;
        Transaction transaction;
        Users tempUsers;

        tempUsers = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Users.class);
            criteria.add(Restrictions.eq("id", id));

            tempUsers = (Users) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.close();
        }

        return tempUsers;
    }

    public static Users getUsersByLoginAndPassword(String login, String password) {
        Session session;
        Transaction transaction;
        Users tempUsers;

        tempUsers = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Users.class);
            criteria.add(Restrictions.eq("login", login));
            criteria.add(Restrictions.eq("password", password));

            tempUsers = (Users) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.close();
        }

        return tempUsers;
    }

    public static Long addNewUsers(Users newUser) {
        Session session;
        Transaction transaction;
        Long id;

        id = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            id = (Long) session.save(newUser);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.close();
        }

        return id;
    }
}
