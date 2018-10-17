package br.com.dkblog.services;

import br.com.dkblog.dto.ArchiveCountDTO;
import br.com.dkblog.models.Post;
import br.com.dkblog.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class PostServiceJpaImpl implements PostService {

    @Autowired
    private PostRepository postRepo;

    @Override
    public List<Post> findAll() {
        return this.postRepo.findAll();
    }

    @Override
    public List<Post> findLatest() {
        return this.postRepo.findLatestPosts(new PageRequest(0, 5));
    }

    @Override
    public List<Post> findFeatured() {
        return this.postRepo.findFeaturedPosts(new PageRequest(0, 3));
    }

    @Override
    public Post findById(Long id) {
        return this.postRepo.findById(id).orElse(null);
    }

    @Override
    public Post create(Post post) {
        return this.postRepo.save(post);
    }

    @Override
    public Post edit(Post post) {
        return this.postRepo.save(post);
    }

    @Override
    public void deleteById(Long id) {
        this.postRepo.deleteById(id);
    }

    @Override
    public List<ArchiveCountDTO> getArchiveList() {
        return this.postRepo.getArchiveList();
    }

    @Override
    public List<Post> findByMonthAndYear(int month, int year, int day) {
        return this.postRepo.findByMonthAndYear(month, year, day);
    }
}