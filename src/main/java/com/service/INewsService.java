package com.service;

import com.model.News;

import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
public interface INewsService {
    List<News> getNews();
    void addNews(News news);
    void updateNews(News news);
    void deleteNews(News news);
}
