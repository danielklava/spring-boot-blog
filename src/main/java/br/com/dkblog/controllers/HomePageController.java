package br.com.dkblog.controllers;

import br.com.dkblog.dto.ArchiveCountDTO;
import br.com.dkblog.models.Post;
import br.com.dkblog.services.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class HomePageController extends AbstractPageController{

	@Autowired
	private PostService postService;

    // inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		
		List<Post> latestPosts = postService.findLatest();
		model.put("latestPosts", latestPosts);
		
		List<Post> featuredPosts = postService.findFeatured();
		model.put("featuredPosts", featuredPosts);

		return "home";
	}
}