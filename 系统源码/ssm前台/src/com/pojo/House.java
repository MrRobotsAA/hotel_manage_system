package com.pojo;

public class House {
	
	private Integer id;
	private String  roomCatName;
	private String image;
	private Integer num;
	private Integer price;
	private Integer type;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoomCatName() {
		return roomCatName;
	}

	public void setRoomCatName(String roomCatName) {
		this.roomCatName = roomCatName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public House() {
		super();
	}
	
	
}
