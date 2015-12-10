package com.model;

import java.util.List;

/**
 * Created by yufanyang on 12/7/2015.
 */
public class User {
    private int uses_id;
    private String uses_name;
    private String uses_password;
    private int uses_cell;
    private int uses_status;
    private List list;

    //无参的构造函数
    public User() {
    }

    //get和set方法

    public int getUses_id() {
        return uses_id;
    }

    public void setUses_id(int uses_id) {
        this.uses_id = uses_id;
    }

    public String getUses_name() {
        return uses_name;
    }

    public void setUses_name(String uses_name) {
        this.uses_name = uses_name;
    }

    public String getUses_password() {
        return uses_password;
    }

    public void setUses_password(String uses_password) {
        this.uses_password = uses_password;
    }

    public int getUses_cell() {
        return uses_cell;
    }

    public void setUses_cell(int uses_cell) {
        this.uses_cell = uses_cell;
    }

    public int getUses_status() {
        return uses_status;
    }

    public void setUses_status(int uses_status) {
        this.uses_status = uses_status;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
