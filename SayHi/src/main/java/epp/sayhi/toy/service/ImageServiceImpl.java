package epp.sayhi.toy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import epp.sayhi.toy.model.Image;
import epp.sayhi.toy.repository.ImageDAO;


@Service
public class ImageServiceImpl implements ImageService{
	
	@Autowired
	ImageDAO imageDAO;

	@Override
	public int createExampleImageFile(Image image) {
		System.out.println("ServiceImpl: "+image.toString());
		return imageDAO.createExampleImageFile(image);
	}
	
	@Override
	public List<Image> readImageFileList(){
		return imageDAO.readExampleImageFile();
	}
	
	@Override
	public List<Image> readImageFileListById(int id){
		return imageDAO.readExampleImageFileById(id);
	}

	@Override
	public int updateImageFileList(Image image) {
//		// TODO Auto-generated method stub
//		return imageFileDAO.updateImageFileList(image);
		return 0;
	}

	@Override
	public int deleteImageFileList(int id) {
		return imageDAO.deleteImageFileList(id);

	}

	@Override
	public List<Image> getImg(int id) {
		List<Image> imageList = imageDAO.getImg(id);

		return imageList;
	}

	
	
}

