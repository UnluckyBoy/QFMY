package com.global.ImageUtil;

import java.awt.image.BufferedImage;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.Image;
import java.io.File;
 
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.imageio.ImageIO;

public class ImageTool {

	/**
	 * 按宽的比例改变图片的大小
	 * @param filePath
	 * @param width
	 * @return
	 * @throws Exception
	 */
	public static Icon getRatioWidth(String filePath, int width) throws Exception{
		
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double wRatio = (new Integer(width)).doubleValue() / bi.getWidth(); //宽度的比例
		
		int height = (int)(wRatio * bi.getHeight());  //图片转换后的高度
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //设置图像的缩放大小
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(wRatio,wRatio),null);   //设置图像的缩放比例
		
		image = op.filter(bi,null);
		
		int lastLength = filePath.lastIndexOf(".");   
		String subFilePath = filePath.substring(0,lastLength);  //得到图片输出路径
	    String fileType = filePath.substring(lastLength);  //图片类型
	    File zoomFile = new File(subFilePath +"_"+ width +"_" + height + fileType);
	    
	    Icon ret = null;
		try
	    {
	     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
	     ret = new ImageIcon(zoomFile.getPath()); 
	    }
	    catch (Exception e) 
	    {
	     e.printStackTrace();
	    } 
	    
	   return ret;
	}
	
	/**
	 * 按高的比例改变图片的大小
	 * @param filePath
	 * @param height
	 * @return
	 * @throws Exception
	 */
	public static Icon getRatioHeight(String filePath, int height) throws Exception{
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double hRatio = (new Integer(height)).doubleValue() / bi.getHeight(); //高度的比例
		
		int width = (int)(hRatio * bi.getWidth());  //图片转换后的高度
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //设置图像的缩放大小
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(hRatio,hRatio),null);   //设置图像的缩放比例
		
		image = op.filter(bi,null);
		
		int lastLength = filePath.lastIndexOf(".");   
		String subFilePath = filePath.substring(0,lastLength);  //得到图片输出路径
	    String fileType = filePath.substring(lastLength);  //图片类型
	    File zoomFile = new File(subFilePath +"_"+ width +"_" + height + fileType);
	    
	    Icon ret = null;
		try
	    {
	     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
	     ret = new ImageIcon(zoomFile.getPath()); 
	    }
	    catch (Exception e) 
	    {
	     e.printStackTrace();
	    } 
	    
	   return ret;
	}
	
	/**
	 * 按输入的任意宽高改变图片的大小
	 * @param filePath
	 * @param width
	 * @param height
	 * @return
	 * @throws Exception
	 */
	public static Icon getFixedIcon(String filePath, int width, int height) throws Exception{
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double wRatio = (new Integer(width)).doubleValue() / bi.getWidth(); //宽度的比例
		
		double hRatio = (new Integer(height)).doubleValue() / bi.getHeight(); //高度的比例
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //设置图像的缩放大小
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(wRatio,hRatio),null);   //设置图像的缩放比例
		
		image = op.filter(bi,null);
		
		Icon ret = null;
		
		String fileName = filePath.substring(filePath.lastIndexOf("\\")+1); 
		
		String subFilePath = filePath.substring(filePath.indexOf("E"), filePath.lastIndexOf("\\o"));
		
		if(width==900&&height==420) {		
			String newFilePath = subFilePath + "\\" + "900_420_picture" + "\\" + fileName;
		    File zoomFile = new File(newFilePath);
		   
			try
		    {
		     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
		     ret = new ImageIcon(zoomFile.getPath()); 
		    }
		    catch (Exception e) 
		    {
		     e.printStackTrace();
		    } 
		}else if(width==420&&height==316) {
			String newFilePath = subFilePath + "\\" + "420_316_picture" + "\\" + fileName;
		    File zoomFile = new File(newFilePath);
		   
			try
		    {
		     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
		     ret = new ImageIcon(zoomFile.getPath()); 
		    }
		    catch (Exception e) 
		    {
		     e.printStackTrace();
		    }
		}else if(width==300&&height==200) {
			String newFilePath = subFilePath + "\\" + "300_200_picture" + "\\" + fileName;
		    File zoomFile = new File(newFilePath);
		   
			try
		    {
		     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
		     ret = new ImageIcon(zoomFile.getPath()); 
		    }
		    catch (Exception e) 
		    {
		     e.printStackTrace();
		    }
		}else if(width==640&&height==434) {
			String newFilePath = subFilePath + "\\" + "640_434_picture" + "\\" + fileName;
		    File zoomFile = new File(newFilePath);
		   
			try
		    {
		     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
		     ret = new ImageIcon(zoomFile.getPath()); 
		    }
		    catch (Exception e) 
		    {
		     e.printStackTrace();
		    }
		}else {
			String newFilePath = subFilePath + "\\" + "400_300_picture" + "\\" + fileName;
		    File zoomFile = new File(newFilePath);
		   
			try
		    {
		     ImageIO.write((BufferedImage)image, "jpg", zoomFile); 
		     ret = new ImageIcon(zoomFile.getPath()); 
		    }
		    catch (Exception e) 
		    {
		     e.printStackTrace();
		    }
		}
		return ret;
	}
}
