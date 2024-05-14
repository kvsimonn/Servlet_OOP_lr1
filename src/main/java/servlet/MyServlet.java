package servlet;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String theme = request.getParameter("theme");
        String num = request.getParameter("num");
        String imagePath = "C:\\Users\\admin\\IdeaProjects\\Servlet_OOP_lr1\\src\\main\\resources\\" + theme + "\\" + num + ".jpg";

        File file = new File(imagePath);

        if (file.exists()) {
            response.setContentType("image/jpeg");
            FileInputStream fis = new FileInputStream(file);
            OutputStream os = response.getOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fis.read(buffer)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            fis.close();
            os.flush();
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body><h1>Изображение не найдено</h1></body></html>");
        }
    }
}







//package servlet;
//
//import java.io.*;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.OutputStream;
//import java.util.Arrays;
//import java.util.List;
//
//
//public class MyServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        String theme = request.getParameter("theme");
//        int num = Integer.parseInt(request.getParameter("imgNum"));
//
//        String imgPath = "C:\\Users\\admin\\IdeaProjects\\Servlet_OOP_lr1\\src\\main\\resources\\" + theme + "\\" + num + ".jpg";
//
//        try (InputStream is = new FileInputStream(imgPath)) {
//            if (is != null) {
//                int read = 0;
//                byte[] bytes = new byte[1024];
//                OutputStream os = response.getOutputStream();
//                while ((read = is.read(bytes)) != -1) {
//                    os.write(bytes, 0, read);
//                }
//            } else {
//                response.getWriter().println("Изображение не найдено.");
//            }
//        }
//    }
//}
