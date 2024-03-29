package com.abbcc.common;

/**
 * Title:  Java Bean 工具
 * Description:
 * Copyright: Copyright (c) 2001
 * Company: JAVA世纪网 http://www.java2000.net
 * @author 赵学庆
 * @version 1.0
 */
import java.util.*;
import java.util.regex.Pattern;

public class StrTools {
  /**
   * 分割字符串
   * @param str String 原始字符串
   * @param splitsign String 分隔符
   * @return String[] 分割后的字符串数组
   */
  public static String[] split(String str, String splitsign) {
    int index;
    if (str == null || splitsign == null)
      return null;
    ArrayList al = new ArrayList();
    while ((index = str.indexOf(splitsign)) != -1) {
      al.add(str.substring(0, index));
      str = str.substring(index + splitsign.length());
    }
    al.add(str);
    return (String[]) al.toArray(new String[0]);
  }

  /**
   * 替换字符串
   * @param from String 原始字符串
   * @param to String 目标字符串
   * @param source String 母字符串
   * @return String 替换后的字符串
   */
  public static String replace(String from, String to, String source) {
    if (source == null || from == null || to == null)
      return null;
    StringBuffer bf = new StringBuffer("");
    int index = -1;
    while ((index = source.indexOf(from)) != -1) {
      bf.append(source.substring(0, index) + to);
      source = source.substring(index + from.length());
      index = source.indexOf(from);
    }
    bf.append(source);
    return bf.toString();
  }

  /**
   * 替换字符串，能能够在HTML页面上直接显示(替换双引号和小于号)
   * @param str String 原始字符串
   * @return String 替换后的字符串
   */
  public static String htmlencode(String str) {
    if (str == null) {
      return null;
    }
    return replace("\"", "&quot;", replace("<", "&lt;", str));
  }

  /**
   * 替换字符串，将被编码的转换成原始码（替换成双引号和小于号）
   * @param str String
   * @return String
   */
  public static String htmldecode(String str) {
    if (str == null) {
      return null;
    }
    return replace("&quot;", "\"", replace("&lt;", "<", str));
  }

  private static final String _BR = "<br/>";

  /**
   * 在页面上直接显示文本内容，替换小于号，空格，回车，TAB
   * @param str String 原始字符串
   * @return String 替换后的字符串
   */
  public static String htmlshow(String str) {
    if (str == null) {
      return null;
    }
    str = replace("<", "&lt;", str);
    str = replace(" ", "&nbsp;", str);
    str = replace("\r\n", _BR, str);
    str = replace("\n", _BR, str);
    str = replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;", str);
    return str;
  }

  /**
   * 返回指定字节长度的字符串
   * @param str String 字符串
   * @param length int 指定长度
   * @return String 返回的字符串
   */
  public static String toLength(String str, int length) {
    if (str == null) {
      return null;
    }
    if (length <= 0) {
      return "";
    }
    try {
      if (str.getBytes("GBK").length <= length) {
        return str;
      }
    } catch (Exception ex) {
    }
    StringBuffer buff = new StringBuffer();

    int index = 0;
    char c;
    length -= 3;
    while (length > 0) {
      c = str.charAt(index);
      if (c < 128) {
        length--;
      } else {
        length--;
        length--;
      }
      buff.append(c);
      index++;
    }
    buff.append("...");
    return buff.toString();
  }

  /**
   * 判断是否为整数
   * @param str 传入的字符串
   * @return 是整数返回true,否则返回false
   */
  public static boolean isInteger(String str) {
    Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
    return pattern.matcher(str).matches();
  }

  /**
   * 判断是否为浮点数，包括double和float
   * @param str 传入的字符串
   * @return 是浮点数返回true,否则返回false
   */
  public static boolean isDouble(String str) {
    Pattern pattern = Pattern.compile("^[-\\+]?[.\\d]*$");
    return pattern.matcher(str).matches();
  }

  /**
   * 判断输入的字符串是否符合Email样式.
   * @param str 传入的字符串
   * @return 是Email样式返回true,否则返回false
   */
  public static boolean isEmail(String str) {
    Pattern pattern = Pattern.compile("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
    return pattern.matcher(str).matches();
  }

  /**
   * 判断输入的字符串是否为纯汉字
   * @param str 传入的字符窜
   * @return 如果是纯汉字返回true,否则返回false
   */
  public static boolean isChinese(String str) {
    Pattern pattern = Pattern.compile("[\u0391-\uFFE5]+$");
    return pattern.matcher(str).matches();
  }

  /**
   * 是否为空白,包括null和""
   * @param str
   * @return
   */
  public static boolean isBlank(String str) {
    return str == null || str.trim().length() == 0;
  }

  /**
   * 判断是否为质数
   * @param x
   * @return
   */
  public static boolean isPrime(int x) {
    if (x <= 7) {
      if (x == 2 || x == 3 || x == 5 || x == 7)
        return true;
    }
    int c = 7;
    if (x % 2 == 0)
      return false;
    if (x % 3 == 0)
      return false;
    if (x % 5 == 0)
      return false;
    int end = (int) Math.sqrt(x);
    while (c <= end) {
      if (x % c == 0) {
        return false;
      }
      c += 4;
      if (x % c == 0) {
        return false;
      }
      c += 2;
      if (x % c == 0) {
        return false;
      }
      c += 4;
      if (x % c == 0) {
        return false;
      }
      c += 2;
      if (x % c == 0) {
        return false;
      }
      c += 4;
      if (x % c == 0) {
        return false;
      }
      c += 6;
      if (x % c == 0) {
        return false;
      }
      c += 2;
      if (x % c == 0) {
        return false;
      }
      c += 6;
    }
    return true;
  }

  public static void main(String[] args) {
    String[] numbers = { "12345", "-12345", "123.45", "-123.45", ".12345", "-.12345", "a12345", "12345a", "123.a45" };
    for (String str : numbers) {
      System.out.println(str + "=" + isInteger(str) + " " + isDouble(str));
    }

    String[] emails = { "1@2.com", "1.2@3.com", "1@3.4.5.com" };
    for (String str : emails) {
      System.out.println(str + "=" + isEmail(str));
    }
    String[] chineses = { "中国", "1中国", "中国1", "1中国2", "中1国" };
    for (String str : chineses) {
      System.out.println(str + "=" + isChinese(str));
    }
  }
}
