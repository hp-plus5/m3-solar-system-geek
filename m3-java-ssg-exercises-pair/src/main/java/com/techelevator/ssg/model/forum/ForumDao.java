package com.techelevator.ssg.model.forum;

import java.util.List;

public interface ForumDao {

	public List<Forum> getAllPosts();
	public void save(Forum post);
}
