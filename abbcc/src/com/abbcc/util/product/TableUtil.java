package com.abbcc.util.product;

import com.abbcc.pojo.Product;

public class TableUtil {
	public static String getCreateTable(Product product) {
		if (product == null)
			return null;
		StringBuilder builder = new StringBuilder();

		builder.append("CREATE TABLE ");
		String tableName = product.getTableName();
		String comment=product.getProductName();
		builder.append("`" + tableName + "` \n");
		String idName = product.getIdFiledName();
		builder.append("(\n ");
		StringBuilder temp = getCreateFiled(idName, 1, 11, false, 1, null,
				comment);
		builder.append(temp);
		 
		String cpgqxxId=product.getCpgqxxIdFiled();
		StringBuilder temp2 = getCreateFiled(cpgqxxId, 1, 11, false, 2, null,
				comment);
		builder.append(temp2);
		
		
		String filedName = product.getOtherFiledName();
		 
		String[] filedNames = ProductUtil.arrayToString(filedName);
		for (int i = 0; i < filedNames.length; i++) {
			temp = getCreateFiled(filedNames[i], 2, 255, true, 2, null, null);
			builder.append(temp);
		}
		String createTime = ProductUtil.getTableCreateTimeFiled();
		temp = getCreateFiled(createTime, 3, 0, false, 2, null, null);
		builder.append(temp);
		builder.append(" PRIMARY KEY  (`" + idName + "`)");
		builder.append(" \n)\n ");
		builder.append("ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=gbk;");

		return builder.toString();
	}

	private static StringBuilder getCreateFiled(String name, int type,
			int typeLength, boolean ableNull, int incrementType,
			String defalueValue, String comment) {
		StringBuilder builder = new StringBuilder();

		builder.append("`" + name + "`");

		switch (type) {
		case 1:
			builder.append(" int(" + typeLength + ")");
			if (!ableNull) {
				builder.append("  NOT NULL  ");
				if (defalueValue != null) {
					builder.append("  default " + defalueValue + " ");
				}
			} else {
				if (defalueValue != null) {
					builder.append("  default " + defalueValue + " ");
				} else {
					builder.append("  default NULL ");
				}
			}
			break;

		case 2:
			builder.append(" varchar(" + typeLength + ")");
			if (!ableNull) {
				builder.append("  NOT NULL  ");
				if (defalueValue != null) {
					builder.append("  default " + defalueValue + " ");
				}
			} else {
				if (defalueValue != null) {
					builder.append("  default " + defalueValue + " ");
				} else {
					builder.append("  default NULL ");
				}
			}
			break;
		case 3:
			builder.append(" timestamp ");
			if (!ableNull) {
				builder.append("  NOT NULL  ");
				builder.append("  default '0000-00-00 00:00:00' ");
			} else {
				builder.append("  default NULL ");
			}
			break;
		}
		switch (incrementType) {
		case 1:
			builder.append(" auto_increment ");
		case 2:

		}

		if (comment != null) {
			builder.append("COMMENT  '" + comment + "'");
		}
		builder.append(",\n");
		return builder;
	}
	public static void  main(String[] args){
		Product product=new Product();
	 
		product.setIdFiledName("id");
		product.setIsHidden("false,false,false,true");
		product.setIsNull("true,true,true,false");
		product.setIsShow("true,true,true,true");
		product.setOtherFiledName("f_1,f_2,f_3,f_4");
		product.setPropertyName("品牌,品牌2,类别:hehe#heihei#lala,品牌3");
		product.setRemark("ss,ss,ss,ss");
		product.setType("text,text,select,text");
		product.setUnit("mm,mm,nn,nn");
		product.setFormName("f_1,f_2,f_3,f_4"); 
		product.setProductTypeId("010101");
		product.setState(Product.PRODUCT_STATE_IN_USED);
		product.setTableName("t_010101");
		String table=getCreateTable(product);
		System.out.println(table);
	}
}
