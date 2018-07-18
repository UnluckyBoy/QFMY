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
	 * ����ı����ı�ͼƬ�Ĵ�С
	 * @param filePath
	 * @param width
	 * @return
	 * @throws Exception
	 */
	public static Icon getRatioWidth(String filePath, int width) throws Exception{
		
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double wRatio = (new Integer(width)).doubleValue() / bi.getWidth(); //��ȵı���
		
		int height = (int)(wRatio * bi.getHeight());  //ͼƬת����ĸ߶�
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //����ͼ������Ŵ�С
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(wRatio,wRatio),null);   //����ͼ������ű���
		
		image = op.filter(bi,null);
		
		int lastLength = filePath.lastIndexOf(".");   
		String subFilePath = filePath.substring(0,lastLength);  //�õ�ͼƬ���·��
	    String fileType = filePath.substring(lastLength);  //ͼƬ����
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
	 * ���ߵı����ı�ͼƬ�Ĵ�С
	 * @param filePath
	 * @param height
	 * @return
	 * @throws Exception
	 */
	public static Icon getRatioHeight(String filePath, int height) throws Exception{
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double hRatio = (new Integer(height)).doubleValue() / bi.getHeight(); //�߶ȵı���
		
		int width = (int)(hRatio * bi.getWidth());  //ͼƬת����ĸ߶�
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //����ͼ������Ŵ�С
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(hRatio,hRatio),null);   //����ͼ������ű���
		
		image = op.filter(bi,null);
		
		int lastLength = filePath.lastIndexOf(".");   
		String subFilePath = filePath.substring(0,lastLength);  //�õ�ͼƬ���·��
	    String fileType = filePath.substring(lastLength);  //ͼƬ����
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
	 * ������������߸ı�ͼƬ�Ĵ�С
	 * @param filePath
	 * @param width
	 * @param height
	 * @return
	 * @throws Exception
	 */
	public static Icon getFixedIcon(String filePath, int width, int height) throws Exception{
		File f = new File(filePath); 
		
		BufferedImage bi = ImageIO.read(f);
		
		double wRatio = (new Integer(width)).doubleValue() / bi.getWidth(); //��ȵı���
		
		double hRatio = (new Integer(height)).doubleValue() / bi.getHeight(); //�߶ȵı���
		
		Image image = bi.getScaledInstance(width,height,Image.SCALE_SMOOTH); //����ͼ������Ŵ�С
		
		AffineTransformOp op = new AffineTransformOp(AffineTransform.getScaleInstance(wRatio,hRatio),null);   //����ͼ������ű���
		
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
