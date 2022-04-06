package epp.sayhi.toy.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import epp.sayhi.toy.model.Image;
import epp.sayhi.toy.model.Product;
import epp.sayhi.toy.service.ImageService;
import epp.sayhi.toy.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	ImageService imageService;
	
	

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView readList(HttpSession session, HttpServletRequest request, Model model) {
		ModelAndView mv = new ModelAndView();
		List<Image> imgFileList = imageService.readImageFileList();
		mv.addObject("imgFileList", imgFileList);
		System.out.println(mv);
		mv.setViewName("list");
		model.addAttribute("list", productService.getProductList());

		return mv;
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String uploadProduct() {
		return "uploadform";
	}

	@RequestMapping(value = "/uploadok", method = RequestMethod.POST)
	public String uploadProductOK(Model model, MultipartHttpServletRequest request, Product product) {
		Image exampleImageFile = new Image();

		// view에서 보내온 파일 받아서 객체에 넣어주기
		List<MultipartFile> imageFile = request.getFiles("imagefile");

		// 받은 imagefile 출력
//		for (MultipartFile newFile : imageFile) {
//			System.out.println(newFile.getOriginalFilename());
//		}
		productService.uploadProduct(product);
		int product_id = product.getId();
//		System.out.println(product_id);
		// 이미지 파일 저장
		int imgOrder = 1;

		for (MultipartFile newFile : imageFile) {

			// 파일이름 저장
			String imageFileName = newFile.getOriginalFilename();

			exampleImageFile.setImageFileName(imageFileName);
			exampleImageFile.setImageOrder(imgOrder);
			exampleImageFile.setProduct_id(product_id);

			imageService.createExampleImageFile(exampleImageFile);

			imgOrder++;
			System.out.println(exampleImageFile.toString());

			if (!imageFile.isEmpty()) {

				// 파일이 업로드 될 경로 설정
				String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/image");// 현재

				// 서비스가 돌아가고 있는 서버의 웹서비스 디렉토리의 물리적 경로
				// String saveDir = "tomcat/webapps/uploads/image";

				// 위에서 설정한 경로의 폴더가 없을 경우 생성
				File dir = new File(saveDir);
				if (!dir.exists()) {
					dir.mkdirs();
				}

				// 실제 서버에 파일 업로
				if (!newFile.isEmpty()) {
					// String extImageFileName =
					// imageFileName.substring(imageFileName.lastIndexOf("."));
					try {
						newFile.transferTo(new File(saveDir + "/" + imageFileName));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
			}

		}

		return "redirect:list";
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public ModelAndView detailPost(@PathVariable("id") int id, Model model, HttpSession session, HttpServletRequest request) {
		Product product = productService.getProduct(id);
		model.addAttribute("u", product);
		ModelAndView mv = new ModelAndView();
		List<Image> imgFileList = imageService.readImageFileListById(id);
		mv.addObject("imgFileList", imgFileList);
		System.out.println(mv);
		mv.setViewName("detail");

		return mv;
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView updateProduct(@PathVariable("id") int id, Model model, HttpServletRequest request, MultipartFile file) {
		model.addAttribute("u", productService.getProduct(id));
		ModelAndView mv = new ModelAndView();
		
		imageService.deleteImageFileList(id);
//		
//		Image exampleImageFile = new Image();
//
////		List<MultipartFile> imageFile = request.getFiles("imagefile");
//
//		//imageFileService.updateImageFileList(imageFile);
//	
//		if (imageFile.get(0).getOriginalFilename() != "") {
//			// 선택된 파일이 있을 때 기존의 파일을 모두 삭제
//			System.out.println("실행");
//			imageService.deleteImageFileList(id);
//			System.out.println("update file");
//			int imgOrder = 1;
//			for (MultipartFile newfile : imageFile) {
//				String imageFileName = newfile.getOriginalFilename();// 원본 파일 명
//				imgOrder++;
//				
//				exampleImageFile.setImageFileName(imageFileName);
////				exampleImageFile.setImageOrder(imgOrder);
//
//				imageService.createExampleImageFile(exampleImageFile);
//
//				imgOrder++;
//				System.out.println(exampleImageFile.toString());				
//
//				String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/image");//현재
//
//				File dir = new File(saveDir);
//				if (!dir.exists()) {
//					dir.mkdirs();
//				}
//
//				if (!newfile.isEmpty()) {
//					String ext = imageFileName.substring(imageFileName.lastIndexOf("."));
//					try {
//						newfile.transferTo(new File(saveDir + "/" + imageFileName));
//					} catch (IllegalStateException | IOException e) {
//						e.printStackTrace();
//					}
//				}
//
//				System.out.println(saveDir);
//			}
//		}
		
		

		mv.setViewName("updateform");
		
		return mv;
	}

	@RequestMapping(value = "/updateok", method = RequestMethod.POST)
	public String updateProductOk(Product product) {
		if (productService.updateProduct(product) == 0)
			System.out.println("업데이트 성공");
		else
			System.out.println("업데이트 실패");
		
		return "redirect:list";
	}

	@RequestMapping(value = "/delete/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteProduct(@PathVariable("id") int id, Model model) {
		ModelAndView mv = new ModelAndView();
		imageService.deleteImageFileList(id);
		productService.deleteProduct(id);
//		List<Image> imgList = imageService.getImg(id);

//		System.out.println(imgList);

//		return mv.setViewName("redirect:/");
		mv.setViewName("redirect:/");
		
		return mv;
//		return "redirect:../list";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(Model model) {

		return "create";
	}

}
