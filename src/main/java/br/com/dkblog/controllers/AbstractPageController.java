package br.com.dkblog.controllers;

import br.com.dkblog.dto.ArchiveCountDTO;
import br.com.dkblog.services.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Controller
public class AbstractPageController {

    @Autowired
    PostService postService;

    @ModelAttribute("archiveList")
    public List<ArchiveCountDTO> getArchiveList() {
        return postService.getArchiveList();
    }

}
