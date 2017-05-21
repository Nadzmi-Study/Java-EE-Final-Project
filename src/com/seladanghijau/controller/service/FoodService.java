package com.seladanghijau.controller.service;

import com.seladanghijau.model.FoodTypes;
import com.seladanghijau.model.Foods;
import com.seladanghijau.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class FoodService {
    /*
     * Methods
     *  -   getAllFoods(): List
     *  -   getFoodsById(id: Long): Foods
     *  -   addNewFoods(newFood: Foods): Long
     *  -   removeFoodsById(id: Long): void
     *  -   editFoods(editedFood: Foods): void
     *  -   getAllFoodTypes(): List
     *  -   getFoodTypesById(id: Long): FoodTypes
     *  -   addNewFoodTypes(newFoodType: FoodTypes): Long
     *  -   removeFoodTypesById(id: Long): void
     *  -   editFoodTypes(editedFoodType: FoodTypes): void
     */

    public static List getAllFoods() {
        Session session;
        Transaction transaction;
        List foodList;

        foodList = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Foods.class);

            foodList = criteria.list();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return foodList;
    }

    public static Foods getFoodsById(Long id) {
        Session session;
        Transaction transaction;
        Foods tempFood;

        tempFood = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(Foods.class);
            criteria.add(Restrictions.eq("id", id));

            tempFood = (Foods) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return tempFood;
    }

    public static Long addNewFoods(Foods newFood) {
        Session session;
        Transaction transaction;
        Long id;

        id = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            id = (Long) session.save(newFood);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return id;
    }

    public static void removeFoodsById(Long id) {
        Session session;
        Transaction transaction;

        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            session.delete(new Foods(id));
            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }
    }

    public static void editFoods(Foods editedFood) {
        Session session;
        Transaction transaction;

        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            session.update(editedFood);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }
    }

    public static List getAllFoodTypes() {
        Session session;
        Transaction transaction;
        List foodTypeList;

        foodTypeList = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(FoodTypes.class);

            foodTypeList = criteria.list();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return foodTypeList;
    }

    public static FoodTypes getFoodTypesById(Long id) {
        Session session;
        Transaction transaction;
        FoodTypes tempFoodTypes;

        tempFoodTypes = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria criteria;

            transaction = session.beginTransaction();

            criteria = session.createCriteria(FoodTypes.class);
            criteria.add(Restrictions.eq("id", id));

            tempFoodTypes = (FoodTypes) criteria.uniqueResult();

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return tempFoodTypes;
    }

    public static Long addNewFoodTypes(FoodTypes newFoodType) {
        Session session;
        Transaction transaction;
        Long id;

        id = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            id = (Long) session.save(newFoodType);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }

        return id;
    }

    public static void removeFoodTypesById(Long id) {
        Session session;
        Transaction transaction;

        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            session.delete(new FoodTypes(id));

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }
    }

    public static void editFoodTypes(FoodTypes editedFoodType) {
        Session session;
        Transaction transaction;

        session = HibernateUtil.getSessionFactory().openSession();

        try {
            transaction = session.beginTransaction();

            session.update(editedFoodType);

            transaction.commit();
        } catch (Exception e) { e.printStackTrace(); }
        finally {
            session.flush();
            session.close();
        }
    }
}
