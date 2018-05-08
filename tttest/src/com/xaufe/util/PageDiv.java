package com.xaufe.util;

import java.util.List;

public class PageDiv<T>
{
   private int pageNo;//当前第几页
   private int pageSize;//每页多少条
   private int totalCount;//总共多少条
   private int totaoPage;//总共多少页
   
   private List<T> list;//当前页的数据
   
   private int start;//开始页码
   private int end;//结束页码
   private int indexCount=9;//显示页码个数   1 2 3 4 5 6 7 8 9 10
   
   public PageDiv(){}
   public PageDiv(int pageNo,int pageSize,int totalCount,List<T> list)
   {
	   this.pageNo=pageNo;
	   this.pageSize=pageSize;
	   this.totalCount=totalCount;
	   this.list=list;
	   this.totaoPage=(this.totalCount+this.pageSize-1)/this.pageSize;
	 /*  if(this.totalCount%this.pageSize==0)
	   {
		   this.totaoPage=this.totalCount/this.pageSize;
	   }else
	   {
		   this.totaoPage= this.totalCount/this.pageSize+1;
	   }*/
	   
	   
	   if(this.pageNo<1)this.pageNo=1;
	   if(this.pageNo>this.totaoPage)this.pageNo=this.totaoPage;
	   
	   
	   //计算开始页码和终止页码
	   if(this.pageNo-this.indexCount/2<=1)
		   this.start=1;
	   else
		   this.start=this.pageNo-this.indexCount/2;
	   
	   if(this.pageNo+this.indexCount/2>=this.totaoPage)
		   this.end=this.totaoPage;
	   else
		   this.end=this.pageNo+this.indexCount/2;
   }
public int getPageNo() {
	return pageNo;
}
public void setPageNo(int pageNo) {
	this.pageNo = pageNo;
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}
public int getTotaoPage() {
	return totaoPage;
}
public void setTotaoPage(int totaoPage) {
	this.totaoPage = totaoPage;
}
public List<T> getList() {
	return list;
}
public void setList(List<T> list) {
	this.list = list;
}

public int getStart() {
	return start;
}
public void setStart(int start) {
	this.start = start;
}
public int getEnd() {
	return end;
}
public void setEnd(int end) {
	this.end = end;
}
public int getIndexCount() {
	return indexCount;
}
public void setIndexCount(int indexCount) {
	this.indexCount = indexCount;
}
   
   
   
}
