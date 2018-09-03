package com.atdongruan.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class UploadUtils {

    private String upload_rootPath= "F:\\\\";

    private String upload_imgDir= "uImage";
    public String upload(MultipartFile multipartFile, HttpServletRequest request)  {
        String newFileName = NameUtils.getNewFileName(multipartFile.getOriginalFilename());
        System.out.println("到这里了+++++++++++++"+newFileName+upload_rootPath);
        File file = new File(upload_rootPath);
        System.out.println("8888888888888888888888"+newFileName);
        if (!file.exists()){
            file.mkdirs();
        }
        file = new File(upload_rootPath+File.separator+upload_imgDir+File.separator,newFileName);
        try {
            multipartFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return File.separator+upload_imgDir+File.separator+newFileName;
    }
}


