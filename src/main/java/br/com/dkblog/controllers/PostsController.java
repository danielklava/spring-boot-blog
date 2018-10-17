package br.com.dkblog.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import br.com.dkblog.services.PostService;
import br.com.dkblog.models.Post;

import java.util.List;

@Controller
public class PostsController extends AbstractPageController{

    @Autowired
    private PostService postService;

    @RequestMapping("/posts/view/{id}")
    public String view(@PathVariable("id") Long id, Model model){
        
        Post post = postService.findById(id);
        model.addAttribute("post", post);

        return "posts/view";
    }

    @RequestMapping("/posts/{year}/{month}/{day}")
    public String view(@PathVariable("year") int year,
                       @PathVariable("month") int month,
                       @PathVariable("day") int day,
                       Model model){

        List<Post> posts = postService.findByMonthAndYear(month, year, day);
        model.addAttribute("posts", posts);

        return "posts/list";

    }
}