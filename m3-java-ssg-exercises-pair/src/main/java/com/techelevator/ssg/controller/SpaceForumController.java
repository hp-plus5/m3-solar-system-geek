package com.techelevator.ssg.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.forum.Forum;
import com.techelevator.ssg.model.forum.ForumDao;

@Controller
public class SpaceForumController {
	
	@Autowired
	private ForumDao forumDao;

	@RequestMapping(path="/spaceForum", method=RequestMethod.GET)
	public String displaySpaceForum(ModelMap modelHolder) { //This used to be "DisplayDriveTime"??
			modelHolder.put("forumPost", forumDao.getAllPosts());	
		return "spaceForum";
	}

	@RequestMapping(path="/submitForumPost", method=RequestMethod.GET)
	public String showForumPostPage() {
		return "submitForumPost";
	}
	
	@RequestMapping(path="/submitForumPost", method=RequestMethod.POST)
	public String savePosts(@RequestParam String username, @RequestParam String subject, @RequestParam String message) {
		LocalDateTime postTime = LocalDateTime.now();
		Forum post = new Forum();
		
		post.setUsername(username);
		post.setSubject(subject);
		post.setMessage(message);
		post.setDatePosted(postTime);
		
		forumDao.save(post);
		return "redirect:/spaceForum";
	}
}