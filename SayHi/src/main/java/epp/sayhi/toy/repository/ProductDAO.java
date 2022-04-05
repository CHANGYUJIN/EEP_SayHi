package epp.sayhi.toy.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import epp.sayhi.toy.model.Product;

@Repository
public class ProductDAO {

	@Autowired
	SqlSession sqlSession;

	public int uploadProduct(Product vo) {
		int result = sqlSession.insert("Product.uploadProduct", vo);
		return result;
	}

	public List<Product> getProductList() {
		List<Product> list = sqlSession.selectList("Product.getProductList");
		return list;
	}

	public Product getProduct(int id) {
		System.out.println("showing product..");
		Product one = sqlSession.selectOne("Product.getProduct", id);
		return one;
	}
	
	public int updateProduct(Product vo) {
		return sqlSession.update("Product.updateProduct", vo);
	}
	
	public int deleteProduct(int id) {
		return sqlSession.delete("Product.deleteProduct", id);
	}
}
