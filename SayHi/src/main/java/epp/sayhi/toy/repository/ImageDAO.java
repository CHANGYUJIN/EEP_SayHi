package epp.sayhi.toy.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
//총동연에서는 밑에꺼 썼는데, 현재아래꺼 쓰며ㅕㄴ 에러남,,,위에꺼로 자동에러해결은 되는 상태인데 계정을 몰라서 뜨는 에러때문에 확인을 못함 
//import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import epp.sayhi.toy.model.Image;

@Repository
public class ImageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
		
	public int createExampleImageFile(Image image) {
		sqlSession.insert("fileDemo.createExampleImageFile", image);

		return 0;
	}
	public List<Image> readExampleImageFile() {
		//System.out.println(image.toString());
		return sqlSession.selectList("fileDemo.readExampleImageFile");
		//System.out.println("finished inserting");

	}
	
	public List<Image> readExampleImageFileById(int id) {
		//System.out.println(image.toString());
		int product_id = id;
		return sqlSession.selectList("fileDemo.readExampleImageFileById", product_id);
		//System.out.println("finished inserting");

	}
	
	public List<Image> getImg(int id) {
		Map<String, Object> imageList = new HashMap<String, Object>();
		imageList.put("id", id);
		
		return sqlSession.selectList("fileDemo.getImg", imageList);
	}
	
	public int deleteImageFileList(int id) {
		return sqlSession.delete("fileDemo.deleteExampleImageFile", id);

	}

	
}

