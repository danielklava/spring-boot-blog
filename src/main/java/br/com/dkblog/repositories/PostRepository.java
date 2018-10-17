package br.com.dkblog.repositories;

import br.com.dkblog.dto.ArchiveCountDTO;
import br.com.dkblog.models.Post;
import org.eclipse.jdt.internal.compiler.tool.Archive;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {

    @Query("SELECT p FROM Post p LEFT JOIN FETCH p.author ORDER BY p.date DESC")
    List<Post> findLatestPosts(Pageable pageable);

    @Query("SELECT p FROM Post p WHERE p.featured = true ORDER BY p.date DESC")
    List<Post> findFeaturedPosts(Pageable pageable);

    @Query("SELECT new br.com.dkblog.dto.ArchiveCountDTO(p.date, COUNT(p.date)) from Post p GROUP BY p.date ORDER BY p.date DESC")
    List<ArchiveCountDTO> getArchiveList();

    @Query("SELECT p FROM Post p WHERE FUNCTION('MONTH', p.date) = ?1 AND FUNCTION('YEAR', p.date) = ?2 AND FUNCTION('DAY', p.date) = ?3")
    List<Post> findByMonthAndYear(@Param("month") int month, @Param("year") int year, @Param("day") int day);
}
