package com.service.Impl;

import com.dao.INewsDao;
import com.model.Comment;
import com.model.News;
import com.service.INewsService;
import org.springframework.stereotype.Service;

import java.util.List;


/* Created by yufanyang on 12/9/2015.*/


@Service("newsService")
public class NewsServiceImpl implements INewsService {
    private INewsDao newsDao;
    //gets&sets
    public INewsDao getNewsDao() {
        return newsDao;
    }
    public void setNewsDao(INewsDao newsDao) {
        this.newsDao = newsDao;
    }

    public News selectNewsById(int news_id){
        return newsDao.selectNewsById(news_id);
    }
    public List<News> getNews() {
        return newsDao.getNews();
    }
    public int addNews(News news) {

        int result = newsDao.addNews(news);
        return result;
    }
    public int updateNews(int news_id){
        return newsDao.updateNews(news_id);

    }
    public int deleteNews(int news_id){
        return newsDao.deleteNews(news_id);
    }

    public int deleteComment(Comment comment){
        return newsDao.deleteComment(comment);
    }

}
