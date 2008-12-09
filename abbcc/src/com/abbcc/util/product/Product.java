package com.abbcc.util.product;

 

public class Product {

	String id;

	Table table; 
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Table getTable() {
		return table;
	}

	public void setTable(Table table) {
		this.table = table;
	} 

	public String getInsertSql( ){
		 StringBuilder builder=new StringBuilder();
	     String sql="insert into ";
	     builder.append(sql);
	     builder.append(table.getName()+" (");
	     Filed[] fileds=table.getFiled();
	     for(int i=0;i<fileds.length;i++){
	    	 Filed filed=fileds[i];
	    	 if(i==fileds.length-1)
	    	 {
	    		 builder.append(filed.getName()+")");
	    	 }else
	    	 {
	    		 builder.append(filed.getName()+",");
	    	 }
	    	
	     }
	     builder.append(" value (");
	     for(int i=0;i<fileds.length;i++){ 
	    	 if(i==fileds.length-1)
	    	 {
	    		 builder.append("?)");
	    	 }else
	    	 {
	    		 builder.append("?,");
	    	 }
	    	
	     }
	     return builder.toString();
	}
	
}
