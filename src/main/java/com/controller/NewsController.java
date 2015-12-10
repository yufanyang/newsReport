package com.controller;

import com.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.service.INewsService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private INewsService newsService;
    @RequestMapping("/newsList")
    public ModelAndView showMessage(){
        ModelAndView mv=new ModelAndView("welcome");
        List<News> newsList=new ArrayList<News>();
        newsList=newsService.getNews();
        mv.addObject("newsList",newsList);
        return mv;
    }
    @RequestMapping("/delete")
    public String deleteNews(News news){
        newsService.deleteNews(news);
        return "redirect:/news/newsList";
    }
    @RequestMapping("/add")
    public String addNews(News news) throws Exception{
        newsService.addNews(news);
        return  "redirect:/news/newsList";
    }
    @RequestMapping("/update")
    public String updateNews(News news) throws Exception{
        newsService.updateNews(news);
        return "redirect:/news/newsList";
    }

    public INewsService getNewsService() {
        return newsService;
    }
    public void setNewsService(INewsService newsService) {
        this.newsService = newsService;
    }
}
