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
			// ������ӵ�������ɫ    

			graphics.setColor(new Color(Integer.parseInt("000000", 16)));
			// ��������    
			Font mFont = new Font("����", Font.PLAIN, 12);// Ĭ������    
			graphics.setFont(mFont);

			// �������    
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
     * ����ͼƬ������,���Խ�ԭʼ·����url����ͼƬ���ź�ŵ������·����newUrl������� 
     * url��newUrl��ͬ���Ǿ�����ԭʼͼƬ�Ļ��������޸��� 
     * @author kongqz 
     * @param url Ҫ���޸ĵ�ͼƬ������·�������Ǵ���ڷ������ϵľ���·�� 
     * @param newWidth �µĿ�� 
     * @param newHeight �µĸ߶� 
     * @param  newUrl Ҫд���·�������Ǵ���ڷ������ϵľ���·�������Ժ�urlһ�����������Ƕ�ԭʼͼƬ���޸��� 
     * @param  suffix �ļ��ĺ�׺�������硰jpg�� 
     * */ 
 
	 public static void scaledImage(String url, int newWidth, int newHeight, String newUrl, String suffix)throws Exception{ 
	        //��ȡͼƬ 
		    URL neturl = new URL(url);
		    
		    
		    
		    
		    
		    
		    
	        BufferedImage bi = ImageIO.read(neturl); 
	        //�ж϶���ͼƬ�Ŀ�͸� 
	        if (bi.getHeight() > bi.getWidth()) 
	        { 
	            //����߱ȿ��,�ͽ�����ֵ,ȷ�����ɵ�ͼƬ�ĳ�������һ����Χ�� 
	            int tmp = newWidth; 
	            newWidth = newHeight; 
	            newHeight = tmp; 
	        } 
	        //��Image��ķ�����ͼƬ���еȱ�ѹ��,ֻҪ��͸���һֵΪ��,���������Ǹ�ֵΪ���߽��еȱ�ѹ�� 
	        Image image2 = bi.getScaledInstance(newWidth, newHeight, Image.SCALE_AREA_AVERAGING); 
	        //��ȡѹ����ͼƬ�ĸߺͿ� 
	        int height = image2.getHeight(null); 
	        int width = image2.getWidth(null);           

	        //���µĸߺͿ���һ���µĻ���ͼƬ 
	        BufferedImage bi3 = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB); 
	        Graphics g = bi3.getGraphics(); 
	        //���µĻ���ͼƬ�л�ͼ,�ڻ�ͼ��ʱ������趨����ɫ 
	        g.drawImage(image2, 0, 0,Color.white, null); 
	        //����IO��������ļ� 
	        FileOutputStream fos = new FileOutputStream(new File(newUrl)); 
	        //��ͼƬд�뵽ָ�����ļ��� 
	        ImageIO.write(bi3, suffix, fos); 
	        fos.close(); 

	    }   
	 
 
}
