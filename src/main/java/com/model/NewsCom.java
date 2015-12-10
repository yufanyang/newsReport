package com.model;

/**
 * Created by yufanyang on 12/7/2015.
 */
public class NewsCom {
    private int newscom_id;
    private int news_id;
    private int comment_id;
    private int comment_count;
    //无参构造方法
    public NewsCom() {
    }
    //get和set方法

    public int getNewscom_id() {
        return newscom_id;
    }

    public void setNewscom_id(int newscom_id) {
        this.newscom_id = newscom_id;
    }

    public int getNews_id() {
        return news_id;
    }

    public void setNews_id(int news_id) {
        this.news_id = news_id;
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public int getComment_count() {
        return comment_count;
    }

    public void setComment_count(int comment_count) {
        this.comment_count = comment_count;
    }
}
