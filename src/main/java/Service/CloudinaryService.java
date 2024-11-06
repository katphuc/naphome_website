package Service;

import com.cloudinary.Cloudinary;
import com.cloudinary.api.ApiResponse;
import com.cloudinary.utils.ObjectUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class CloudinaryService {

    private Cloudinary cloudinary;

    public CloudinaryService() {
        cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "productnap",
                "api_key", "479729419672555",
                "api_secret", "3BPrgiqH5u4Z5j7NlZEQzmkpsK8"
        ));
    }

    public  String uploadImage(File file, String publicId) {
        try {
            Map uploadResult = cloudinary.uploader().upload(file, ObjectUtils.asMap("public_id", publicId));
            return (String) uploadResult.get("secure_url"); // Lấy URL của ảnh đã tải lên
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void listImages() {
        try {
            ApiResponse response = cloudinary.api().resources(ObjectUtils.asMap("type", "upload", "prefix", "", "max_results", 500));
            List<Map> resources = (List<Map>) response.get("resources");

            System.out.println("Danh sách hình ảnh:");
            for (Map resource : resources) {
                String imageUrl = (String) resource.get("secure_url");
                System.out.println(imageUrl);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }



    // Thêm phương thức main để test
    public static void main(String[] args) {
        CloudinaryService cloudinaryService = new CloudinaryService();

//        // Đường dẫn đến file ảnh trên máy tính
//        File testFile = new File("C:\\Users\\vuutruongnhatthanh\\Downloads\\chi-tiet-ro-le-an-toan-ormon-g7sa.png"); // Thay "path/to/your/image.jpg" bằng đường dẫn thực tế
//        String fileName = testFile.getName();
//        String publicId = fileName.substring(0, fileName.lastIndexOf(".")); // Lấy tên file không có phần mở rộng
//
//
//        String imageUrl = cloudinaryService.uploadImage(testFile, publicId);
//
//        if (imageUrl != null) {
//            System.out.println("Upload thành công! URL của ảnh: " + imageUrl);
//        } else {
//            System.out.println("Upload thất bại.");
//        }

        // Liệt kê hình ảnh đã tải lên
        cloudinaryService.listImages();



    }
}
