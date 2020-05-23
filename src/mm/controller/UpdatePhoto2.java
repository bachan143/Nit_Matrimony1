package mm.controller;

import java.util.*;
import java.io.*;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

import mm.db.Users;
import mm.model.UsersDao;

/**
 * Servlet implementation class UpdatePhoto
 */
@WebServlet("/mm.controller.UpdatePhoto2")
public class UpdatePhoto2 extends HttpServlet 
{
	private ServletFileUpload uploader = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		String ctx = getServletContext().getRealPath("//profileimg");
		File f1 = new File(ctx);
		fileFactory.setRepository(f1);
		uploader = new ServletFileUpload(fileFactory);
		
		//out.write("<html><head></head><body>");
		try 
		{
			List<FileItem> fileItemsList = uploader.parseRequest(request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext())
			{
				//System.out.println("............a");
				FileItem fileItem = fileItemsIterator.next();
				if ( !fileItem.isFormField () )	
			    {   
					//System.out.println("............b");
					f1 = new File(ctx+"\\"+fileItem.getName());
					System.out.println(f1.getAbsolutePath());
					fileItem.write(f1);
					//out.write("File "+fileItem.getName()+ " uploaded successfully.");
					//out.write("<br>");
					//String p1 = "profileimg\\"+f1.getName();
					
					/*RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?filename="+p1);
					rd.include(request, response);
					*///out.println("<img src='"+p1+"' height='300px'/>");
					
					
			    }
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			out.write("Exception in uploading file.");
		}
		//out.write("</body></html>");
	    HttpSession session=request.getSession();
		Users u=new Users();
		
		String file_name="profileimg\\"+f1.getName();
		u.setEmailid((String)session.getAttribute("emailid"));
		u.setPhotos( "profileimg\\"+f1.getName());
		int status=UsersDao.updatePhoto(u, file_name);
		if(status > 0)
		{
			response.sendRedirect("userWindow.jsp?msg=updated successfully in database" );
		}
		System.out.println(f1.getAbsolutePath());
		
	}
}
