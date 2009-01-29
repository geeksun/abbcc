package test;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageTest {
	/*public static void watermark(String imageUrl) {
		URL url = null;
		try {
			url = new URL(imageUrl);
			// url = new URL("http://bbs.ntsky.com/images/logo.gif");    

		} catch (MalformedURLException e) {
			e.printStackTrace();
		}

		Image image = null;
		try {
			image = ImageIO.read(url);

			int tempWidth = image.getWidth(null);
			int tempHeight = image.getHeight(null);
			int x = (int) (tempWidth * 0.1);
			int y = (int) (tempHeight * 0.9);
			BufferedImage bufferedImage = drawImageFrame(image, tempWidth,
					tempHeight);
			Graphics graphics = bufferedImage.getGraphics();
			// 设置添加的字体颜色    

			graphics.setColor(new Color(Integer.parseInt("000000", 16)));
			// 设置字体    
			Font mFont = new Font("宋体", Font.PLAIN, 12);// 默认字体    
			graphics.setFont(mFont);

			// 输出文字    
			graphics.drawString("www.ntsky.com", 10, 20);
			FileOutputStream out = new FileOutputStream("c:/11.jpg");
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			encoder.encode(bufferedImage);
			out.close();

		} catch (IOException ioException) {
			ioException.printStackTrace();
		} catch (ImageFormatException e) {
			e.printStackTrace();
		}
	}*/
	public static void main(String[] args){
		String url="http://s5.photo.store.qq.com/http_imgload.cgi?/rurl4_b=146916496eff73710064759d0e65dd830ff562285cc9c24f83187811a81070447e606ada58e2aaa018c32bc7e26cbd6997398c143000dd565a6bc9f4f03dcd312ada5f8eae6ba5bcd232464849d8b1bc2004b671/tj";
		String newurl="c:\\cc.gif";
		try {
			scaledImage(url,300,300,newurl,"gif");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	 /** 
     * 进行图片的缩放,可以将原始路径（url）的图片缩放后放到另外的路径（newUrl）。如果 
     * url和newUrl相同，那就是在原始图片的基础上做修改了 
     * @author kongqz 
     * @param url 要做修改的图片的物理路径，就是存放在服务器上的绝对路径 
     * @param newWidth 新的宽度 
     * @param newHeight 新的高度 
     * @param  newUrl 要写入的路径，就是存放在服务器上的绝对路径，可以和url一样，这样就是对原始图片的修改了 
     * @param  suffix 文件的后缀名，例如“jpg” 
     * */ 
 
	 public static void scaledImage(String url, int newWidth, int newHeight, String newUrl, String suffix)throws Exception{ 
	        //读取图片 
		    URL neturl = new URL(url);
		    
		    
		    
		    
		    
		    
		    
	        BufferedImage bi = ImageIO.read(neturl); 
	        //判断读入图片的宽和高 
	        if (bi.getHeight() > bi.getWidth()) 
	        { 
	            //如果高比宽大,就交换两值,确保生成的图片的长个宽都在一个范围内 
	            int tmp = newWidth; 
	            newWidth = newHeight; 
	            newHeight = tmp; 
	        } 
	        //用Image里的方法对图片进行等比压缩,只要宽和高其一值为负,则以正的那个值为最大边进行等比压缩 
	        Image image2 = bi.getScaledInstance(newWidth, newHeight, Image.SCALE_AREA_AVERAGING); 
	        //获取压缩后图片的高和宽 
	        int height = image2.getHeight(null); 
	        int width = image2.getWidth(null);           

	        //以新的高和宽构造一个新的缓存图片 
	        BufferedImage bi3 = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB); 
	        Graphics g = bi3.getGraphics(); 
	        //在新的缓存图片中画图,在画图的时候可以设定背景色 
	        g.drawImage(image2, 0, 0,Color.white, null); 
	        //构造IO流输出到文件 
	        FileOutputStream fos = new FileOutputStream(new File(newUrl)); 
	        //将图片写入到指定的文件中 
	        ImageIO.write(bi3, suffix, fos); 
	        fos.close(); 

	    }   
	 
 
}
