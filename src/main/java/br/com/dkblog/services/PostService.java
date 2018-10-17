package br.com.dkblog.services;

import java.util.Date;
import java.util.List;
import java.util.Map;

import br.com.dkblog.dto.ArchiveCountDTO;
import br.com.dkblog.models.Post;

public interface PostService{
    List<Post> findAll();

    List<Post> findLatest();

    List<Post> findFeatured();
    
    Post findById(Long id);
    
    Post create(Post post);
    
    Post edit(Post post);
    
    void deleteById(Long id);

    List<ArchiveCountDTO> getArchiveList();

    List<Post> findByMonthAndYear(int month, int year, int day);
}