/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import data.Qoso;
import data.S;
import data.Sc;
import data.Sp;
import data.Sr;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Eric
 */
public class NewSR extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet page1</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet page1 at " + request.getContextPath() + "</h1>");

            try {
                Configuration configuration = new Configuration();
                configuration.configure("hibernate.cfg.xml");
                StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
                SessionFactory sessionFactory = configuration.buildSessionFactory(ssrb.build());
                Session session = sessionFactory.openSession();
                Transaction trans = session.beginTransaction();
                                
                Query query = session.createQuery("from data.Sc sc where sc.id = :anId");
                query.setParameter("anId", Integer.valueOf(request.getParameter("sc_id")));                
                Sc sc = (Sc) query.uniqueResult();
                if(sc == null){
                    throw new HibernateException(new Throwable("The SC_ID doesn't exist"));
                }

                query = session.createQuery("from data.S s where s.id = :anId");
                query.setParameter("anId", Integer.valueOf(request.getParameter("s_id")));                
                S s = (S) query.uniqueResult();
                if(sc == null){
                    throw new HibernateException(new Throwable("The S_ID doesn't exist"));
                }                
                
                query = session.createQuery("from data.Sp sp where sp.id = :anId");
                query.setParameter("anId", Integer.valueOf(request.getParameter("sp_id")));                
                Sp sp = (Sp) query.uniqueResult();
                if(sp == null){
                    throw new HibernateException(new Throwable("The SP_ID doesn't exist"));
                }                
                
                query = session.createQuery("from data.Qoso qoso where qoso.id = :anId");
                query.setParameter("anId", Integer.valueOf(request.getParameter("qoso_id")));                
                Qoso qoso = (Qoso) query.uniqueResult();
                if(qoso == null){
                    throw new HibernateException(new Throwable("The Qoso_ID doesn't exist"));
                }                
                
                Sr sr = new Sr(qoso, s, sc, sp, sc.getName(), s.getName(), request.getParameter("statut"));                
                session.persist(sr);                
                trans.commit();                
                session.close();
                out.println("The creation of this Service Registery has succeded !!<br/>");                
            } catch (HibernateException he) {
                out.println(he.getMessage()+ "<br/>");
                out.println("The creation of this Service Registery has failed...<br/>");                
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
