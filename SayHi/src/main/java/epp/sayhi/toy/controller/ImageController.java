//package epp.sayhi.toy.controller;
//
//import java.io.File;
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.multipart.MultipartHttpServletRequest;
//import org.springframework.web.servlet.ModelAndView;
//
//import epp.sayhi.toy.model.Image;
//import epp.sayhi.toy.service.ImageService;
//import epp.sayhi.toy.service.ProductService;
//
///**
// * Handles requests for the application home page.
// */
//@Controller
//@RequestMapping("/image")
//public class ImageController {
//
//	@Autowired
//	ImageService imageService;
//	
//	@Autowired
//	ProductService productService;
//
////	@Autowired
////	private SqlSessionTemplate sqlSession;
//
////	/**
////	 * Simply selects the home view to render by returning its name.
////	 */
////	@RequestMapping(value = "/", method = RequestMethod.GET)
////	public String home(Locale locale, Model model) {
////
////		return "read";
////	}
//
//	@RequestMapping(value = "/create", method = RequestMethod.GET)
//	public String create(Model model) {
//
//		return "create";
//	}
//
//	@RequestMapping(value = "/createFile", method = RequestMethod.POST)
//	public String createFile(Model model, MultipartHttpServletRequest request) {
//
//		Image exampleFile = new Image();
//		Image exampleImageFile = new Image();
//
//		// view에서 보내온 파일 받아서 객체에 넣어주기
//		List<MultipartFile> imageFile = request.getFiles("imagefile");
//		List<MultipartFile> allFile = request.getFiles("allfile");
//
//		// 받은 imagefile 출력
////		for (MultipartFile newFile : imageFile) {
////			System.out.println(newFile.getOriginalFilename());
////		}
//
//		// 이미지 파일 저장
//		int imgOrder = 1;
//
//		for (MultipartFile newFile : imageFile) {
//
//			// 파일이름 저장
//			String imageFileName = newFile.getOriginalFilename();
//
//			exampleImageFile.setImageFileName(imageFileName);
//			exampleImageFile.setImageOrder(imgOrder);
//
//			imageService.createExampleImageFile(exampleImageFile);
//
//			imgOrder++;
//			System.out.println(exampleImageFile.toString());
//
//			if (!imageFile.isEmpty()) {
//
//				// 파일이 업로드 될 경로 설정
//				String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/image");// 현재
//
//				// 서비스가 돌아가고 있는 서버의 웹서비스 디렉토리의 물리적 경로
//				// String saveDir = "tomcat/webapps/uploads/image";
//
//				// 위에서 설정한 경로의 폴더가 없을 경우 생성
//				File dir = new File(saveDir);
//				if (!dir.exists()) {
//					dir.mkdirs();
//				}
//
//				// 실제 서버에 파일 업로
//				if (!newFile.isEmpty()) {
//					// String extImageFileName =
//					// imageFileName.substring(imageFileName.lastIndexOf("."));
//					try {
//						newFile.transferTo(new File(saveDir + "/" + imageFileName));
//					} catch (IllegalStateException | IOException e) {
//						e.printStackTrace();
//					}
//				}
//			}
//
//		}
//
//		return "redirect:/";
//	}
//
//	@RequestMapping(value = "/read", method = RequestMethod.GET)
//	public ModelAndView read(HttpSession session, HttpServletRequest request, Model model) {
//		ModelAndView mv = new ModelAndView();
//		List<Image> imgFileList = imageService.readImageFileList();
//		mv.addObject("imgFileList", imgFileList);
//		System.out.println(mv);
//		mv.setViewName("read");
//		model.addAttribute("list", productService.getProductList());
//		
//		return mv;
//	}
//
//	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
//	public ModelAndView readDetail(@PathVariable int id, Model model) {
//
//		ModelAndView mv = new ModelAndView();
//
//		// List<Image> clubAdDetailList = imageService.readClubAdvertiseDetail(id);
//
//		List<Image> imgList = imageService.getImg(id);
//
//		mv.addObject("imgList", imgList);
//
//		System.out.println(mv);
//
//		mv.setViewName("update");
//
//		return mv;
//	}
//
//	@RequestMapping(value = "/delete/{id}", method = { RequestMethod.GET, RequestMethod.POST })
//	public ModelAndView delete(@PathVariable int id, Model model) {
//
//		ModelAndView mv = new ModelAndView();
//
//		imageService.deleteImageFileList(id);
//		// List<Image> clubAdDetailList = imageService.readClubAdvertiseDetail(id);
//
////		List<Image> imgList = imageService.getImg(id);
////		mv.addObject("imgList", imgList);
//		List<Image> imgList = imageService.getImg(id);
//
//		System.out.println(imgList);
//
//		mv.setViewName("redirect:/");
//
//		return mv;
//	}
//
//	@RequestMapping(value = "/update/{id}/write", method = RequestMethod.POST)
//	public String update(@PathVariable int id, ModelAndView mv, MultipartHttpServletRequest request,
//			MultipartFile file) {
//
//		Image exampleImageFile = new Image();
//
//		List<MultipartFile> imageFile = request.getFiles("imagefile");
//
//		// imageService.updateImageFileList(imageFile);
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
//				exampleImageFile.setImageOrder(imgOrder);
//
//				imageService.createExampleImageFile(exampleImageFile);
//
//				imgOrder++;
//				System.out.println(exampleImageFile.toString());
//
//				String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/image");// 현재
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
//
//		return "redirect:/";
//	}
//
//}
