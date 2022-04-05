package epp.sayhi.toy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import epp.sayhi.toy.model.Product;
import epp.sayhi.toy.repository.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;

	@Override
	public int uploadProduct(Product vo) {
		// TODO Auto-generated method stub
		return productDAO.uploadProduct(vo);
	}

	@Override
	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		return productDAO.getProductList();
	}

	@Override
	public Product getProduct(int id) {
		return productDAO.getProduct(id);
	}
	
	@Override
	public int updateProduct(Product vo) {
		return productDAO.updateProduct(vo);
	}
	
	@Override
	public int deleteProduct(int id) {
		return productDAO.deleteProduct(id);
	}
	
	

}
