package com.shoesmall.goods.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

// 20개 필드
@Component
public class GoodsVO {
	private int goods_id;
	private String goods_sort;
	private String goods_title;
	private String goods_model;
	private String goods_gender;
	private int goods_price;
	private int goods_sales_price;
	private int goods_point;
	private int goods_delivery_price;
	private Date goods_delivery_date;
	private String goods_status;
	private String goods_intro;
	private String goods_material;
	private String goods_features;
	private String goods_manufacturer;
	private String goods_manufacturer_country;
	private Date goods_manufacturer_date;
	private Date goods_enter_date;
	private String goods_fileName;

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_sort() {
		return goods_sort;
	}

	public void setGoods_sort(String goods_sort) {
		this.goods_sort = goods_sort;
	}

	public String getGoods_title() {
		return goods_title;
	}

	public void setGoods_title(String goods_title) {
		this.goods_title = goods_title;
	}

	public String getGoods_gender() {
		return goods_gender;
	}

	public void setGoods_gender(String goods_gender) {
		this.goods_gender = goods_gender;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_sales_price() {
		return goods_sales_price;
	}

	public void setGoods_sales_price(int goods_sales_price) {
		this.goods_sales_price = goods_sales_price;
	}

	public int getGoods_point() {
		return goods_point;
	}

	public void setGoods_point(int goods_point) {
		this.goods_point = goods_point;
	}

	public int getGoods_delivery_price() {
		return goods_delivery_price;
	}

	public void setGoods_delivery_price(int goods_delivery_price) {
		this.goods_delivery_price = goods_delivery_price;
	}

	public Date getGoods_delivery_date() {
		return goods_delivery_date;
	}

	public void setGoods_delivery_date(Date goods_delivery_date) {
		this.goods_delivery_date = goods_delivery_date;
	}

	public String getGoods_status() {
		return goods_status;
	}

	public void setGoods_status(String goods_status) {
		this.goods_status = goods_status;
	}

	public String getGoods_intro() {
		return goods_intro;
	}

	public void setGoods_intro(String goods_intro) {
		this.goods_intro = goods_intro;
	}

	public String getGoods_material() {
		return goods_material;
	}

	public void setGoods_material(String goods_material) {
		this.goods_material = goods_material;
	}

	public String getGoods_features() {
		return goods_features;
	}

	public void setGoods_features(String goods_features) {
		this.goods_features = goods_features;
	}

	public String getGoods_manufacturer() {
		return goods_manufacturer;
	}

	public void setGoods_manufacturer(String goods_manufacturer) {
		this.goods_manufacturer = goods_manufacturer;
	}

	public String getGoods_manufacturer_country() {
		return goods_manufacturer_country;
	}

	public void setGoods_manufacturer_country(String goods_manufacturer_country) {
		this.goods_manufacturer_country = goods_manufacturer_country;
	}

	public Date getGoods_manufacturer_date() {
		return goods_manufacturer_date;
	}

	public void setGoods_manufacturer_date(Date goods_manufacturer_date) {
		this.goods_manufacturer_date = goods_manufacturer_date;
	}

	public Date getGoods_enter_date() {
		return goods_enter_date;
	}

	public void setGoods_enter_date(Date goods_enter_date) {
		this.goods_enter_date = goods_enter_date;
	}

	public String getGoods_fileName() {
		return goods_fileName;
	}

	public void setGoods_fileName(String goods_fileName) {
		this.goods_fileName = goods_fileName;
	}

	@Override
	public String toString() {
		return "GoodsVO [goods_id=" + goods_id + ", goods_sort=" + goods_sort + ", goods_title=" + goods_title
				+ ", goods_gender=" + goods_gender + ", goods_price=" + goods_price + ", goods_sales_price="
				+ goods_sales_price + ", goods_point=" + goods_point + ", goods_delivery_price=" + goods_delivery_price
				+ ", goods_delivery_date=" + goods_delivery_date + ", goods_status=" + goods_status + ", goods_intro="
				+ goods_intro + ", goods_material=" + goods_material + ", goods_features=" + goods_features
				+ ", goods_manufacturer=" + goods_manufacturer + ", goods_manufacturer_country="
				+ goods_manufacturer_country + ", goods_manufacturer_date=" + goods_manufacturer_date
				+ ", goods_enter_date=" + goods_enter_date + ", goods_fileName=" + goods_fileName + "]";
	}

}
