/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.trainermvc.dao;

import com.mycompany.trainermvc.entities.Trainer;
import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Mixal
 */
@Repository("trainerDao")
public class TrainerDao extends AbstractDao<Integer, Trainer>{
    
    public Trainer findById(int id) {
        Trainer t = getByKey(id);
        if(t != null) {
            return t;
        }
        return null;
    }
    
    public List<Trainer> findAll() {
         Criteria criteria = createEntityCriteria();
         //return((List<Customer>)criteria.list());
         return(criteria.list());
                 
    }
    
    public boolean save(Trainer trainer) {
        return(persist(trainer));
    }
    
    public boolean update(Trainer trainer) {
        Trainer tempTrainer = findById(trainer.getId());
        if(tempTrainer != null) {
            tempTrainer.setFirstName(trainer.getFirstName());
            tempTrainer.setLastName(trainer.getLastName());
            tempTrainer.setSubject(trainer.getSubject());
            return(save(tempTrainer));
        } else return(false);
    }
    
    public boolean delete(int id) {
        Trainer tempTrainer = findById(id);
        if(tempTrainer != null) {
            delete(tempTrainer);
            return(true);
        }
        return(false);
    }
    
}
