package br.com.dkblog.models;

import org.springframework.beans.factory.annotation.Value;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "posts")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @Column(nullable = false, length = 300)
    private String title;

    @Lob @Column(nullable = false)
    private String body;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private User author;

    @Column(nullable = false)
    @org.hibernate.annotations.ColumnDefault("false")
    private Boolean featured;

    @Column(nullable = false)
    private Date date = new Date();

    protected Post(){ }

    public Post(Long id, String title, String body, User author, Boolean featured){
        this.id = id;
        this.title = title;
        this.body = body;
        this.author = author;
        this.featured = featured;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getBody() { return body; }
    public void setBody(String body) { this.body = body; }

    public User getAuthor() { return author; }
    public void setAuthor(User author) { this.author = author; }

    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }

    public Boolean getFeatured() {
        return featured;
    }

    public void setFeatured(Boolean featured) {
        this.featured = featured;
    }
}