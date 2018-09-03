package com.atdongruan.util;

import java.util.UUID;

public class NameUtils {
    public static String getNewFileName(String oldFileName){
        int index = oldFileName.lastIndexOf(".");
        String newFileName = UUID.randomUUID()+oldFileName.substring(index, oldFileName.length());
        return newFileName;
    }
}
