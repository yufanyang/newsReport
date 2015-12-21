package com.controller;

import com.model.Comment;
import com.model.News;
import com.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/*
* Created by yufanyang on 12/9/2015.
*/



@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private INewsService newsService;
    @RequestMapping("/newsList")
    public ModelAndView getNews(){
        ModelAndView mv=new ModelAndView();
    List<News> newsList=newsService.getNews();
    mv.addObject("newsList",newsList);
        mv.setViewName("welcome");
    return mv;
}
    @RequestMapping("/show")
    public String selectNewsById(int news_id){
        newsService.selectNewsById(news_id);
        return"redirect:/news/newsList";
    }
    @RequestMapping("/delete")
    public String deleteNews(int news_id, Comment comment){
        newsService.deleteNews(news_id);
        newsService.deleteComment(comment);
        return "redirect:/news/newsList";
    }
    @RequestMapping("/add")
    public String addNews(News news) throws Exception{
        newsService.addNews(news);
        return  "redirect:/news/newsList";
    }
    @RequestMapping("/update")
    public String updateNews(int news_id) throws Exception{
        newsService.updateNews(news_id);
        return "redirect:/news/newsList";
    }

    public INewsService getNewsService() {
        return newsService;
    }
    public void setNewsService(INewsService newsService) {
        this.newsService = newsService;
    }
}
