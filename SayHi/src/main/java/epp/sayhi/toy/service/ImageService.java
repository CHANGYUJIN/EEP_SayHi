package epp.sayhi.toy.service;

import java.util.List;

import epp.sayhi.toy.model.Image;

public interface ImageService {
		
		public int createExampleImageFile(Image image);
		public List<Image> readImageFileList();
		public List<Image> readImageFileListById(int id);
		public int updateImageFileList(Image image);
		public List<Image> getImg(int id);
		public int deleteImageFileList(int id);
		
}
