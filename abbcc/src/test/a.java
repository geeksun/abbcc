package test;

import java.io.*;
import java.net.*;

class a {

	public static void main(String sp[]) {
		int len="bddead50e58c40b9059cb2e83d9af37e23d0bb61e6f948579714a9fc2cd0a8a07b7ceb73a9def0b7aab6bb674a6556a5769301eeb93b4382336fc67202f89ff5415c2cd6".length();
		int i=len/8;
		int j=len%8;
		System.out.println("i ="+i);
		System.out.println("j ="+j);
		
		//test();
	}
	public static void test() {
		
			
		try {

			FileOutputStream fos = new FileOutputStream("c:/test.gif");
			//String u="http://a13.photo.store.qq.com/http_imgload.cgi?/rurl4_s=8ef298b4e6fb6178c04c81257d87deed7f2eab0c6a41708439229b667285029da60ee48b1d5a1451638f0a7d5fc9bf482301e74eb6beab8e86dc62396bfef25591f8fc7cf32170b61c0054e6581551b142587e37";
			  String u="http://a13.photo.store.qq.com/http_imgload.cgi?/rurl4_s=8ef298b4e6fb6178c04c81257d87deedbddead50e58c40b9059cb2e83d9af37e23d0bb61e6f948579714a9fc2cd0a8a07b7ceb73a9def0b7aab6bb674a6556a5769301eeb93b4382336fc67202f89ff5415c2cd6";
		   // String u="http://a13.photo.store.qq.com/http_imgload.cgi?/rurl4_s=8ef298b4e6fb6178c04c81257d87deed8741eafa648adea3c13dc6044c3ac7bfdba8ed2286a950cba38691c631af1b5d03ea9e16ef4d825b5aa468bf98b24ec6614a2d6f9564058904c5c4dc7406992bc4f89a82";
			  
		 	URL url = new URL(u);
			InputStream is = url.openStream();
			BufferedInputStream inputStream = new BufferedInputStream(is);
			byte b[] = new byte[8096];
			int i = 0;
			while ((i = inputStream.read(b)) != -1) {

				fos.write(b, 0, i);
			}
			fos.close();
			inputStream.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}