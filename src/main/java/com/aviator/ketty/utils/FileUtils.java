package com.aviator.ketty.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

/**
 * ClassName: FileUtils
 * Package: com.aviator.ketty.utils
 * Description:
 *
 * @Author ketty bluce
 * @Create 2023/6/12
 * @Version 1.0
 */



public class FileUtils {
    public static String loadResourceFileAsString(String fileName) throws IOException {
        String result;
        try (InputStream in = FileUtils.class.getResourceAsStream(fileName);
             Scanner scanner = new Scanner(in, "UTF-8")) {
            result = scanner.useDelimiter("\\A").next();
        }
        return result;
    }
}

