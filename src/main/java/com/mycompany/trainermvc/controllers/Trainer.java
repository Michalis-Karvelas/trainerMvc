package com.mycompany.trainermvc.controllers;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = {"/trainer"})
public class Trainer {

    private String editurl = "update";
    private String deleteurl = "delete";

    @Autowired
    com.mycompany.trainermvc.services.Trainer trainerService;

    @RequestMapping(value = {"/{id}"})
    public String showTrainer(ModelMap view, @PathVariable String id) {
        view.addAttribute("projectName", "Trainer Mvc");
        com.mycompany.trainermvc.entities.Trainer trainer = trainerService.findById(Integer.parseInt(id));
        view.addAttribute("trainer", trainer);
        return ("trainer");
    }

    @RequestMapping(value = {"/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view, @RequestParam(required = false) String msg) {
        List<com.mycompany.trainermvc.entities.Trainer> trainers = trainerService.findAllTrainers();
        view.addAttribute("trainers", trainers);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);//
        view.addAttribute("msg", msg);
        return ("trainerlist");
    }

    @RequestMapping("/new")
    public String newTrainer(ModelMap view) {
        view.addAttribute("projectName", "Trainer Mvc");
        com.mycompany.trainermvc.entities.Trainer trainer = new com.mycompany.trainermvc.entities.Trainer();
        view.addAttribute("trainer", trainer);
        return ("newtrainer");
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String saveNewTrainer(ModelMap view, @Valid com.mycompany.trainermvc.entities.Trainer trainer, BindingResult bindingResult) {
        view.addAttribute("projectName", "Trainer Mvc");
        if (bindingResult.hasErrors()) {
            view.addAttribute("error", "There are errors on the form!");
        } else {
            trainerService.save(trainer);
        }
        return ("newtrainer");
    }

    @GetMapping("/update/{id}")
    public String updateTrainer(ModelMap view, @PathVariable int id) {
        com.mycompany.trainermvc.entities.Trainer trainer = trainerService.findById(id);
        view.addAttribute("trainer", trainer);
        return ("updatetrainer");
    }

    @PostMapping("/update/saveupdate")
    public String saveUpdateTrainer(ModelMap view,
            com.mycompany.trainermvc.entities.Trainer trainer) {
        view.addAttribute("projectName", "Trainer Mvc");
        trainerService.update(trainer);
        return ("redirect:/welcome");
    }

    @GetMapping("/delete/{id}")
    public String deleteTrainer(ModelMap view, @PathVariable int id) {
        if (trainerService.delete(id)) {
            view.addAttribute("msg", "Trainer with id:" + id + "deleted successfuly!");
            return ("redirect:/welcome");
        }
        view.addAttribute("msg", "Trainer with id:" + id + "was not deleted!!!");
        return ("redirect:/welcome");
    }
}
