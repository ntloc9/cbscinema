package com.cbs.controllers;

import com.cbs.model.Cinema;
import com.cbs.services.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;

    @RequestMapping(value = "/admin/cinema", method = RequestMethod.GET)
    public String allCinema(Model model) {
        model.addAttribute("cinemas", cinemaService.getAllCinema());
        return "/admin/cinema";
    }

    @RequestMapping(value = "/cinema", method = RequestMethod.GET)
    public String allCinemaUser(@RequestParam(defaultValue = "1", required = false) Integer page, Model model) {
        Page<Cinema> pages = cinemaService.getAllCinemaPage(page);
        model.addAttribute("allCinema", pages);
        return "/cinema";
    }

    @RequestMapping(value = "/admin/add/cinema", method = RequestMethod.GET)
    public String addCinema(Model model) {
        model.addAttribute("cinema", new Cinema());
        return "/admin/add/cinema";
    }

    @RequestMapping(value = "/admin/add/cinema", method = RequestMethod.POST)
    public String addCinema(@Valid Cinema cinema, BindingResult bindingResult, Model model) {
        cinemaService.addCinema(cinema);
        return "redirect:/admin/cinema";
    }

    @RequestMapping(value = "/admin/delete/cinema", method = RequestMethod.GET, params = {"cinemaId"})
    public String deleteCinema(@RequestParam Long cinemaId, Model model) {
        cinemaService.deleteCinemaByID(cinemaId);
        return "redirect:/admin/cinema";
    }

    @RequestMapping(value = "/admin/edit/cinema", method = RequestMethod.GET, params = {"cinemaId"})
    public String editCinema(@RequestParam Long cinemaId, Model model) {
        model.addAttribute("cinema", cinemaService.getCinemaByID(cinemaId));
        return "/admin/edit/cinema";
    }

}

