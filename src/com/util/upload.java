package com.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class upload extends ActionSupport
{
	private static final int BUFFER_SIZE = 16 * 1024;
	private File fujian;
	private String fujianFileName;
	private String fujianContentType;
	
	
	public String upload()
	{
		//将图片的重命名（时间戳）
		String newFujianName=new Date().getTime()+fujianFileName.substring(fujianFileName.indexOf("."));
		/*
		 * 下面的 这句话呢是得到的Tomcat目录下webapps的路径，每次部署都会被覆盖，正式发布后这么写
		String dstPath = ServletActionContext.getServletContext().getRealPath("upload")+ "\\" + newFujianName;
		*/
		String dstPath = ServletActionContext.getServletContext().getRealPath("upload")+ "\\" + newFujianName;
		File dstFile = new File(dstPath);
		copy(this.getFujian(),dstFile);
		try{
			uploadToLocal();
		}catch(Exception e){}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("newFujianName", newFujianName);
		request.put("oldFujianName", fujianFileName);
		request.put("fujianPath", "/upload"+ "/" + newFujianName);
		return ActionSupport.SUCCESS;
	}
	/*
	 * 在下面的方法里重新将文件复制到MyEclipse的工作空间
	 * 方便再部署
	 */
	public void uploadToLocal()
	{
		//将图片的重命名（时间戳）
		String newFujianName=new Date().getTime()+fujianFileName.substring(fujianFileName.indexOf("."));
		
		String dstPath ="D:\\JavaEE\\MyEclipse\\MyEclipse 10 WorkSpace\\NetShop\\WebRoot\\upload"+"\\" + newFujianName;
		File dstFile = new File(dstPath);
		copy(this.getFujian(),dstFile);
	}
	//复制文件的方法
	private static void copy(File src, File dst) 
    {
        InputStream in = null;
        OutputStream out = null;
        try 
        {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) 
            {
                out.write(buffer, 0, len);
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally
        {
            if (null != in) 
            {
                try 
                {
                    in.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
            if (null != out) 
            {
                try 
                {
                    out.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
    }


	public File getFujian()
	{
		return fujian;
	}


	public void setFujian(File fujian)
	{
		this.fujian = fujian;
	}


	public String getFujianContentType()
	{
		return fujianContentType;
	}


	public void setFujianContentType(String fujianContentType)
	{
		this.fujianContentType = fujianContentType;
	}


	public String getFujianFileName()
	{
		return fujianFileName;
	}


	public void setFujianFileName(String fujianFileName)
	{
		this.fujianFileName = fujianFileName;
	}

}
