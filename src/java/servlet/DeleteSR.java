/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import data.S;
import data.Sr;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
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
public class DeleteSR extends HttpServlet {

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
            out.println("<title>Servlet DeleteSR</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteSR at " + request.getContextPath() + "</h1>");
            
            // No try catch, I suppose the connexion will be okey...
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
            SessionFactory sessionFactory = configuration.buildSessionFactory(ssrb.build());
            Session session = sessionFactory.openSession();
            Transaction trans = session.beginTransaction();

            try {
                //String id = request.getParameter("sc_id").trim();
                int sId;
                
                try{
                    sId = Integer.valueOf(request.getParameter("s_id").trim());
                }catch(NumberFormatException ne){
                    throw new HibernateException(new Throwable("The value isn't a number"));
                }

                Query query = session.createQuery("from data.S s where s.id = :anId");
                query.setParameter("anId", sId);
                S s = (S) query.uniqueResult();
                if ( s == null) {
                    throw new HibernateException(new Throwable("This Service ID doesn't exist"));
                }                
                Iterator it = s.getSrs().iterator();
                while(it.hasNext()){
                    session.delete( (Sr) it.next() );
                }                
                session.persist(s);
                trans.commit();
                session.close();
                out.println("The Service Registery(ies) has(have) been removed !!<br/>");
            } catch (HibernateException he) {
                out.println(he.getMessage() + "<br/>");
                //out.println(he.getCause() + "<br/>");
                out.println("Failed to delete the Service Registery(ies)...<br/>");
                trans.rollback();
                session.close();
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
