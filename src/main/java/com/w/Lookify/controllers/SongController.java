package com.w.Lookify.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.w.Lookify.models.Song;
import com.w.Lookify.services.SongService;

import jakarta.validation.Valid;

@Controller
public class SongController {
	@Autowired
	private SongService songService;
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("songs", songService.allSongs());
		return "dashboard.jsp";
	}
	
	@PostMapping("/dashboard")
	public String dashboard(@RequestParam("artist") String artist, Model model) {
		model.addAttribute("artist", artist);
		return "redirect:/search/"+artist;
	}
	
	@GetMapping("/search/{artist}")
	public String searchResult(@PathVariable("artist") String artist, Model model) {
		model.addAttribute("songs", songService.findByArtist(artist));
		model.addAttribute("searchTerm", artist);
		return "searchResults.jsp";
	}
	
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song) {
		return "newSong.jsp";
	}
	
	@PostMapping("/songs/new")
	public String newSong(@Valid @ModelAttribute("song") Song song, BindingResult result) {
		if(result.hasErrors()) {
			return "newSong.jsp";
		}
		songService.addSong(song);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/songs/{id}")
	public String viewSong(@PathVariable("id") Long id, Model model) {
		model.addAttribute("song", songService.songById(id));
		return "songDetails.jsp";
	}
	
	@GetMapping("/songs/delete/{id}")
	public String deleteSong(@PathVariable("id") Long id) {
		songService.deleteSong(songService.songById(id));
		return "redirect:/dashboard";
	}
	@GetMapping("/songs/top-ten")
    public String topTenSongs(Model model) {
        model.addAttribute("topTenSongs", songService.getTopTenSongs());
        return "topSongs.jsp";
    }

}
