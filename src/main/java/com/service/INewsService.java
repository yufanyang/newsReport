package com.service;

import com.model.Comment;
import com.model.News;

import java.util.List;


/* Created by yufanyang on 12/9/2015.*/


public interface INewsService {
    List<News> getNews();
    int addNews(News news);
    int deleteComment(Comment comment);
    int deleteNews(int news_id);
    News selectNewsById(int news_id);
    int updateNews(int news_id);
}
