/**
 * @date 2016/10/17
 * @author 王梓
 */
package com.icss.bean;

public class UserRole {
    private Integer id;

    private Integer uid;

    private Integer rid;
    
    private String ridlist;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getRidlist() {
        return ridlist;
    }

    public void setRidlist(String ridlist) {
        this.ridlist = ridlist;
    }
    
    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}