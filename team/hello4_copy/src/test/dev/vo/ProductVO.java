package test.dev.vo;

import java.io.Serializable;

import java.util.ArrayList;

public class ProductVO implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;
	private int quantity;
	private String productId;
	private String pname;
	private Integer unitPrice;
	private String description;
	private String filename;
	private String division;
	ArrayList<ProductVO> listOfProducts = new ArrayList<ProductVO>();
	public ProductVO() {
		super();
	}
	public ProductVO(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductId() {
		return productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	public ArrayList<ProductVO> getAllProducts() {
		return listOfProducts;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity=quantity;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division=division;
	}
	
	
}
