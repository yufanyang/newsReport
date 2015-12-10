package com.model;

/**
 * Created by yufanyang on 12/7/2015.
 */
public class Comment {
    private int comment_id;
    private String comment_content;
    private int comment_code;
    //无参构造方法

    public Comment() {
    }
    //get和set方法

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public int getComment_code() {
        return comment_code;
    }

    public void setComment_code(int comment_code) {
        this.comment_code = comment_code;
    }
}
