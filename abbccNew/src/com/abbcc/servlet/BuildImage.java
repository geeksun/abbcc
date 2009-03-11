package com.abbcc.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BuildImage extends HttpServlet {
	private static final long serialVersionUID = -6434961847567090180L;
	public BuildImage() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		//  ȥ���Ự�е�����
		session.removeAttribute("rand");
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		//	����ҳ�治����
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		
		// ���ڴ��д���ͼ��
		int width = 70, height = 25;     //  ԭΪ int width = 60, height = 20;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);

		// ��ȡͼ��������
		Graphics g = image.getGraphics();
		
		//���������
		Random random = new Random();

		// �趨����ɫ
		g.setColor(getRandColor(200, 250));
		g.fillRect(0, 0, width, height);   //  0,0

		//�趨����
		g.setFont(new Font("Times New Roman", Font.PLAIN, 22));   //  ԭΪ  18

		//���߿�
		//g.setColor(new Color());
		//g.drawRect(0,0,width-1,height-1);

		// �������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽
		g.setColor(getRandColor(160, 200));
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}
		
		// ȡ�����������֤��(4λ����)
		String sRand = "";
		for (int i = 0; i < 4; i++) {
			String rand = String.valueOf(random.nextInt(10));
			sRand += rand;
			// ����֤����ʾ��ͼ����
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
			.nextInt(110), 20 + random.nextInt(110)));// ���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������
			g.drawString(rand, 15 * i + 8, 20);		  //  ԭΪ 13 * i + 6, 16
		}

		// ����֤�����SESSION
		session.setAttribute("rand", sRand);

		// ͼ����Ч
		g.dispose();

		// ���ͼ��ҳ��
		ImageIO.write(image, "JPEG", response.getOutputStream());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	/**
	 * @param fc
	 * @param bc
	 * @return ������Χ��������ɫ
	 */
	Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
