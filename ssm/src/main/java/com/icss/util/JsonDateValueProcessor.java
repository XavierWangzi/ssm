package com.icss.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

public class JsonDateValueProcessor implements JsonValueProcessor{//这是时间转换器
	private String format ="yyyy-MM-dd";
	 
	public JsonDateValueProcessor() {  
	        super();  
    }  
      
    public JsonDateValueProcessor(String format) {  
        super();  
        this.format = format;  
    } 

	@Override
	public Object processArrayValue(Object paramObject, JsonConfig paramJsonConfig) {
		// TODO Auto-generated method stub
		return process(paramObject); 
	}

	@Override
	public Object processObjectValue(String paramString, Object paramObject, JsonConfig paramJsonConfig) {
		// TODO Auto-generated method stub
		return process(paramObject);  
	}  
     
	private Object process(Object value){  
        if(value instanceof Date){    
            SimpleDateFormat sdf = new SimpleDateFormat(format,Locale.CHINA);    
            return sdf.format(value);  
        }    
        return value == null ? "" : value.toString();    
    }     

}
