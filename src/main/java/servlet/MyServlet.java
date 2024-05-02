package servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
    public MyServlet() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String theme = request.getParameter("theme");
        int num = Integer.parseInt(request.getParameter("imgNum"));

        String imgPath = "/resources/" + theme + "/" + num + ".jpg";
        try (InputStream is = getServletContext().getResourceAsStream(imgPath)) {
            if (is != null) {
                int read = 0;
                byte[] bytes = new byte[1024];
                OutputStream os = response.getOutputStream();
                while ((read = is.read(bytes)) != -1) {
                    os.write(bytes, 0, read);
                }
            } else {
                response.getWriter().println("Изображение не найдено.");
            }
        }
    }
}
