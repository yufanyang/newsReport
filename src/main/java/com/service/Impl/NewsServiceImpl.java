package com.service.Impl;

import com.dao.INewsDao;
import com.model.News;
import com.service.INewsService;

import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
public class NewsServiceImpl implements INewsService {
    private INewsDao newsDao;

    public List<News> getNews() {
       /* List<News> newsList=new ArrayList<News>();
        newsList.add(new News());*/
        return newsDao.getNews();
    }

    public void addNews(News news) {
        newsDao.addNews(news);
    }
    public void updateNews(News news) {
        newsDao.updateNews(news);
    }
    public void deleteNews(News news) {
        newsDao.deleteNews(news);
    }

    //gets&sets
    public INewsDao getNewsDao() {
        return newsDao;
    }
    public void setNewsDao(INewsDao newsDao) {
        this.newsDao = newsDao;
    }
}
