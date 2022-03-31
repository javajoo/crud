package com.crud.day02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day02.bo.MusicBO;
import com.crud.day02.model.Music;

@Controller
public class MusicController {
	
	@Autowired
	private MusicBO musicBO;
	
	// 추가 화면
	@RequestMapping("/day02/create_view")
	public String createView() {
		return "day02/create";
	}
	
	// 목록 화면
	@RequestMapping("/day02/list_view")
	public String listView(Model model) {
		List<Music> musicList = musicBO.selectMusicList();
		model.addAttribute("musicList",musicList);
		return "day02/list";
	}
	
	// 상세 화면
	@RequestMapping("/day02/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Music music = musicBO.selectMusic(id);
		model.addAttribute("music",music);
		return "day02/detail";
	}
}
