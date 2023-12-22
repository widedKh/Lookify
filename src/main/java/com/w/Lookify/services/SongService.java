package com.w.Lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.w.Lookify.models.Song;
import com.w.Lookify.repositories.SongRepository;

@Service
public class SongService {
	@Autowired
	private SongRepository songRepository;
	
	public List<Song> allSongs(){
		return songRepository.findAll();
	}
	
	public Song addSong(Song song) {
		return songRepository.save(song);
	}
	
	public List<Song> findByArtist(String artist) {
		return songRepository.findByArtistContaining(artist);
	}
	
	public Song songById(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}
		return null;
	}
	
	public void deleteSong(Song song) {
		songRepository.delete(song);
	}
	 public List<Song> getTopTenSongs() {
	        return songRepository.findTop10ByOrderByRatingDesc();
	    }
}