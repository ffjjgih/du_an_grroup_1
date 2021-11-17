package utils;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.FilenameUtils;

public class UploadImg {
	public static String loadIMG(String fileName, HttpServletRequest request, String storedforder, String storedfilename) {
		try {
			Part filepart = request.getPart(fileName);
			if(filepart==null||filepart.getSize()==0) {
				return "";
			}
		if(storedforder==null) {
			storedforder="/img";
		}
		if(storedfilename==null) {
			storedfilename=Path.of(filepart.getSubmittedFileName()).getFileName().toString();
		}else {
			storedfilename +="." + FilenameUtils.getExtension(Path.of(filepart.getSubmittedFileName()).toString());
		}
			String uploatforder = request.getServletContext().getRealPath(storedforder);
			Path uploadPath= Paths.get(uploatforder);
			if(!Files.exists(uploadPath)) {
				Files.createDirectory(uploadPath);
			}
			filepart.write(Paths.get(uploadPath.toString(),storedfilename).toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return storedfilename;
		}
}
