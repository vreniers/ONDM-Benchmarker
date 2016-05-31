package com.yahoo.ycsb.db;

import javax.persistence.Basic;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.eclipse.persistence.nosql.annotations.Field;
import org.eclipse.persistence.nosql.annotations.NoSql;
import org.eclipse.persistence.nosql.annotations.DataFormatType;

@Entity
@NoSql(dataFormat=DataFormatType.MAPPED)
public class User 
{
	@Id
	@GeneratedValue
	@Field(name="_id")
    private String userId;

	@Basic
    private String field0;
    
    @Basic
    private String field1;
    
    @Basic
    private String field2;
    
    @Basic
    private String field3;
    
    @Basic
    private String field4;
    
	@Basic
    private String field5;
    
    @Override
	public String toString() {
		return "User [userId=" + userId + ", field0=" + field0 + ", field1="
				+ field1 + ", field2=" + field2 + ", field3=" + field3
				+ ", field4=" + field4 + ", field5=" + field5 + ", field6="
				+ field6 + ", field7=" + field7 + ", field8=" + field8
				+ ", field9=" + field9 + "]";
	}

	@Basic
    private String field6;
    
    @Basic
    private String field7;
    
    @Basic
    private String field8;
    
    @Basic
    private String field9;
    
    public User() {
    	
    }
    
    public User(String key) {
    	this.userId = key;
    }
    
    public User(String key, String field0, String field1) {
    	this.userId = key;
    	this.field0 = field0;
    	this.field1 = field1;
    }
    
    public User(String key, String field0, String field1, String field2, String field3, String field4, String field5, String field6, String field7,
    		String field8, String field9) {
    	this.userId = key;
    	
    	this.field0 = field0;
    	this.field1 = field1;
    	this.field2 = field2;
    	this.field3 = field3;
    	this.field4 = field4;
    	this.field5 = field5;
    	this.field6 = field6;
    	this.field7 = field7;
    	this.field8 = field8;
    	this.field9 = field9;
    }
    
    public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getField1() {
		return field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}

	public String getField4() {
		return field4;
	}

	public void setField4(String field4) {
		this.field4 = field4;
	}

	public String getField5() {
		return field5;
	}

	public void setField5(String field5) {
		this.field5 = field5;
	}

	public String getField6() {
		return field6;
	}

	public void setField6(String field6) {
		this.field6 = field6;
	}

	public String getField7() {
		return field7;
	}

	public void setField7(String field7) {
		this.field7 = field7;
	}

	public String getField8() {
		return field8;
	}

	public void setField8(String field8) {
		this.field8 = field8;
	}

	public String getField9() {
		return field9;
	}

	public void setField9(String field9) {
		this.field9 = field9;
	}

	public String getField0() {
		return field0;
	}

	public void setField0(String field0) {
		this.field0 = field0;
	}

	public String getField3() {
		return field3;
	}

	public void setField3(String field3) {
		this.field3 = field3;
	}
    
}