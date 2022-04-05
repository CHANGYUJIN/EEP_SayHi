package epp.sayhi.toy.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Image {

	private int id;
	private String imageFileName;
	private int imageOrder;
	private int product_id;
	private String allFileName;
	private int fileOrder;
	private MultipartFile file; 
	private Date regdate;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getImageOrder() {
		return imageOrder;
	}
	public void setImageOrder(int imageOrder) {
		this.imageOrder = imageOrder;
	}
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getFileOrder() {
		return fileOrder;
	}
	public void setFileOrder(int fileOrder) {
		this.fileOrder = fileOrder;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public String getAllFileName() {
		return allFileName;
	}
	public void setAllFileName(String allFileName) {
		this.allFileName = allFileName;
	}
	
	@Override
	public String toString() {
		return "DTO [id=" + id + ", imageFileName=" + imageFileName + ", imageOrder=" + imageOrder + ", allFileName="
				+ allFileName + ", fileOrder=" + fileOrder + ", file=" + file + ", regdate=" + regdate + "]";
	}
	
}

