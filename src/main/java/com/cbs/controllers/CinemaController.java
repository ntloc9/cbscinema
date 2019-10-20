package com.cbs.controllers;

import com.cbs.dto.AddCinema;
import com.cbs.model.Cinema;
import com.cbs.model.Screen;
import com.cbs.services.CinemaScreenService;
import com.cbs.services.CinemaService;
import com.cbs.services.ScreenService;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.validation.Valid;

@Controller
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private ScreenService screenService;
    @Autowired
    private CinemaScreenService cinemaScreenService;

    @RequestMapping(value = "/admin/cinema", method = RequestMethod.GET)
    public String allCinema(Model model) {
        model.addAttribute("cinemas", cinemaService.getAllCinema());
        return "/admin/cinema-list";
    }

    @RequestMapping(value = "/cinema", method = RequestMethod.GET)
    public String allCinemaUser(@RequestParam(defaultValue = "1", required = false) Integer page, Model model) {
        Page<Cinema> pages = cinemaService.getAllCinemaPage(page);
        model.addAttribute("allCinema", pages);
        return "/cinema";
    }

    @RequestMapping(value = "/admin/add/cinema", method = RequestMethod.GET)
    public String addCinema(Model model) {
    	AddCinema cinema  = new AddCinema();
    	List<Screen> screens = screenService.getAllScreen();
    	
    	Map<Long,Integer> screenRows = new HashMap<>();
    	for (Screen screen : screens) {
    		
    		screenRows.put(screen.getId(), 0);
		}
    	cinema.setScreenRows(screenRows);
    	
    	model.addAttribute("cinema", new Cinema());
//        model.addAttribute("cinema", new Cinema());
        model.addAttribute("screens", screenService.getAllScreen());
        return "/admin/add/cinema";
    }

    @RequestMapping(value = "/admin/add/cinema", method = RequestMethod.POST)
    public String addCinema(@Valid Cinema cinema, BindingResult bindingResult, Model model, String[] screens, String[] rows) {
        cinemaService.addCinema(cinema);
        
        Map<Long,Integer> screenList = new HashMap<Long,Integer>();
        
        for (int i = 0; i < screens.length; i++) {
        	Long screenId = Long.parseLong(screens[i]);
        	Integer row = Integer.parseInt(rows[i]);
        	
        	screenList.put(screenId,row);
		}
        cinemaScreenService.addScreenToCinema(cinema,screenList);
        
        return "redirect:/admin/cinema";
    }

    @RequestMapping(value = "/admin/delete/cinema", method = RequestMethod.GET, params = {"id"})
    public String deleteCinema(@RequestParam Long id, Model model) {
        cinemaService.deleteCinemaByID(id);
        return "redirect:/admin/cinema";
    }

    @RequestMapping(value = "/admin/edit/cinema", method = RequestMethod.GET, params = {"id"})
    public String editCinema(@RequestParam Long id, Model model) {
    	Cinema cinema = cinemaService.getCinemaByID(id);
        model.addAttribute("cinema", cinema);
        model.addAttribute("screens", cinema.getCinemaScreens());
        return "/admin/add/cinema";
    }

}

