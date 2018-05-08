package com.xaufe.entity;

public class Area extends AreaKey {
    private String name;

    private int style;

    private short parentid;

    private Boolean child;

    private int listorder;

    private String description;

    private int siteid;

    private String arrchildid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
    }

    public short getParentid() {
        return parentid;
    }

    public void setParentid(Short parentid) {
        this.parentid = parentid;
    }

    public Boolean getChild() {
        return child;
    }

    public void setChild(Boolean child) {
        this.child = child;
    }

    public int getListorder() {
        return listorder;
    }

    public void setListorder(Short listorder) {
        this.listorder = listorder;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public int getSiteid() {
        return siteid;
    }

    public void setSiteid(Short siteid) {
        this.siteid = siteid;
    }

    public String getArrchildid() {
        return arrchildid;
    }

    public void setArrchildid(String arrchildid) {
        this.arrchildid = arrchildid == null ? null : arrchildid.trim();
    }
}