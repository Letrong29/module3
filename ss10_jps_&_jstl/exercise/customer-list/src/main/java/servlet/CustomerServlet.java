package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Mai Văn Hoàng", LocalDate.parse("1983-08-20"),"Hà nội","https://image.thanhnien.vn/w1024/Uploaded/2022/ifyiy/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam", LocalDate.parse("1983-08-21"),"Bắc Giang","https://image.thanhnien.vn/w1024/Uploaded/2022/ifyiy/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
        customerList.add(new Customer("Mai Thái Hoà", LocalDate.parse("1983-08-22"),"Nam Định","https://image.thanhnien.vn/w1024/Uploaded/2022/ifyiy/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa", LocalDate.parse("1983-08-17"),"Hà Tây","https://image.thanhnien.vn/w1024/Uploaded/2022/ifyiy/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi", LocalDate.parse("1983-08-19"),"Hà nội","https://image.thanhnien.vn/w1024/Uploaded/2022/ifyiy/2022_01_04/a5ee06311886d2d88b97-981.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
