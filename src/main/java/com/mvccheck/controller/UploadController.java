package com.mvccheck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;

@Controller
public class UploadController {

    @RequestMapping("/upload")
    public String showUploadForm() {
        return "upload"; // returns the name of the JSP file without extension
    }

    @PostMapping("/uploadFile")
    public ModelAndView uploadFile(@RequestParam("file") MultipartFile file) {
        ModelAndView modelAndView = new ModelAndView();

        if (file.isEmpty()) {
            modelAndView.setViewName("upload");
            modelAndView.addObject("message", "Please select a file to upload");
            return modelAndView;
        }

        try {
            // Get the filename and save it in the "uploads" directory
            String fileName = file.getOriginalFilename();
            String uploadDir = "uploads/";
            String filePath = uploadDir + fileName;

            File dest = new File(filePath);
            file.transferTo(dest);

            modelAndView.setViewName("upload");
            modelAndView.addObject("message", "File uploaded successfully");
        } catch (IOException e) {
            modelAndView.setViewName("upload");
            modelAndView.addObject("message", "Error uploading file");
        }

        return modelAndView;
    }
}

