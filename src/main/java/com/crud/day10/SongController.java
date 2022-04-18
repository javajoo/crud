package com.crud.day10;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day10.service.SongService;
import com.crud.day10.vo.Song;

@Controller
public class SongController {

	@Autowired
	private SongService songService;
	
	@RequestMapping("/day10/create_view")
	public String createView() {
		return "day10/create";
	}
	
	
	@RequestMapping("/day10/list_view")
	public String listView(Model model) {
		List<Song> songList = songService.selectSongList();
		model.addAttribute("songList",songList);
		return "day10/list";
	}
	
	@RequestMapping("/day10/detail_view")
	public String detailView(@RequestParam("id") int id, Model model) {
		Song song = songService.selectSongById(id);
		model.addAttribute("song",song);
		return "day10/detail";
	}
}
