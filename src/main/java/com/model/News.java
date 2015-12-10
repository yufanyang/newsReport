package com.model;

import java.util.List;

/**
 * Created by yufanyang on 12/7/2015.
 */
public class News {
    private int news_id;
    private String news_title;
    private String news_content;
    private String news_author;
    private String news_date;
    private int colums_id;
    private int comment_code;
    private List list;
    //无参构造方法
    public News() {
    }
    //get和set方法
    public int getNews_id() {
        return news_id;
    }

    public void setNews_id(int news_id) {
        this.news_id = news_id;
    }

    public String getNews_title() {
        return news_title;
    }

    public void setNews_title(String news_title) {
        this.news_title = news_title;
    }

    public String getNews_content() {
        return news_content;
    }

    public void setNews_content(String news_content) {
        this.news_content = news_content;
    }

    public String getNews_author() {
        return news_author;
    }

    public void setNews_author(String news_author) {
        this.news_author = news_author;
    }

    public String getNews_date() {
        return news_date;
    }

    public void setNews_date(String news_date) {
        this.news_date = news_date;
    }

    public int getColums_id() {
        return colums_id;
    }

    public void setColums_id(int colums_id) {
        this.colums_id = colums_id;
    }

    public int getComment_code() {
        return comment_code;
    }

    public void setComment_code(int comment_code) {
        this.comment_code = comment_code;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
