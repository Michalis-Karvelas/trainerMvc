/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.trainermvc.services;

import com.mycompany.trainermvc.dao.TrainerDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Mixal
 */
@Service("trainerService")
@Transactional
public class Trainer {
    
    @Autowired
    TrainerDao dao;
    
    public com.mycompany.trainermvc.entities.Trainer findById(int id) {
        return dao.findById(id);
    }
    
    public List<com.mycompany.trainermvc.entities.Trainer> findAll() {
        return(dao.findAll());
    }
    
    public boolean save(com.mycompany.trainermvc.entities.Trainer trainer) {
        boolean result = false;
        result = dao.save(trainer);
        return(result);
    }
    
    public boolean update(com.mycompany.trainermvc.entities.Trainer trainer) {
        return(dao.update(trainer));
    }
    
    public boolean delete(int id) {
        return(dao.delete(id));
        
    }
    
}
