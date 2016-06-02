package com.yahoo.ycsb.db;


import generated.User;


import java.util.HashMap;
import java.util.Set;
import java.util.Vector;

import org.apache.gora.query.Query;
import org.apache.gora.query.Result;
import org.apache.gora.store.DataStore;
import org.apache.gora.store.DataStoreFactory;
import org.apache.gora.util.GoraException;
import org.apache.hadoop.conf.Configuration;

import com.yahoo.ycsb.ByteIterator;
import com.yahoo.ycsb.DB;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.Status;

/**
 * Database interface layer for YCSB.
 * This interface layers call the Apache Gora abstraction layer,
 * which makes the calls to the selected NoSQL database.
 * 
 * @author vincent
 */
public class GoraClientCRU extends DB{

	private static final Status Ok = Status.OK;

    private static final Status Error = Status.ERROR;
	
	private DataStore<String, User> dataStore; 
	
	private int amountOps;
	
	private final int clearOps = 1000;	
	
	public static void main(String[] args) {
		GoraClientCRU client = new GoraClientCRU();
		try {
			client.init();
		} catch (DBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * Initializes once.
	 */
	public void init() throws DBException {
	    try {
			dataStore = DataStoreFactory.getDataStore(String.class, User.class, new Configuration());
			
			amountOps = 1;
		} catch (GoraException e) {
			e.printStackTrace();
		}
	}
	
	/**
     * Cleanup any state for this DB. 
     * 
     * It is very important to close the datastore properly, otherwise
     * some data loss might occur.
     */
    public void cleanup() throws DBException
    {
        if(dataStore != null)
          dataStore.close();
    }
	
	@Override
	public Status read(String table, String key, Set<String> fields, HashMap<String, ByteIterator> result) {
		try{
			@SuppressWarnings("unused")
			User user = dataStore.get(key);
			
//			System.out.println(user);
			
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}

	@Override
	public Status scan(String table, String startkey, int recordcount, Set<String> fields, Vector<HashMap<String, ByteIterator>> result) {
		try{
			Query<String, User> query = dataStore.newQuery();
		    
		    query.setStartKey(startkey);
		    query.setLimit(recordcount);
		    
		    Result<String, User> res = query.execute();
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}

	@Override
	public Status update(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			User user = dataStore.get(key);
		    
			if(values.containsKey("field0") && values.get("field0") != null)
				user.setField0(values.get("field0").toString());
			
			if(values.containsKey("field1") && values.get("field1") != null)
				user.setField1(values.get("field1").toString());
			
			if(values.containsKey("field2") && values.get("field2") != null)
				user.setField2(values.get("field2").toString());
			
			if(values.containsKey("field3") && values.get("field3") != null)
				user.setField3(values.get("field3").toString());
			
			if(values.containsKey("field4") && values.get("field4") != null)
				user.setField4(values.get("field4").toString());
			
			if(values.containsKey("field5") && values.get("field5") != null)
				user.setField5(values.get("field5").toString());
			
			if(values.containsKey("field6") && values.get("field6") != null)
				user.setField6(values.get("field6").toString());
			
			if(values.containsKey("field7") && values.get("field7") != null)
				user.setField7(values.get("field7").toString());
			
			if(values.containsKey("field8") && values.get("field8") != null)
				user.setField8(values.get("field8").toString());
			
			if(values.containsKey("field9") && values.get("field9") != null)
				user.setField9(values.get("field9").toString());
			
			// Put will overwrite if ID already exists
			dataStore.put(key, user);
			
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}

	@Override
	public Status insert(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			User user = new User();
			user.setUserId(key);
			user.setField0(values.get("field0").toString());
			user.setField1(values.get("field1").toString());
			user.setField2(values.get("field2").toString());
			user.setField3(values.get("field3").toString());
			user.setField4(values.get("field4").toString());
			user.setField5(values.get("field5").toString());
			user.setField6(values.get("field6").toString());
			user.setField7(values.get("field7").toString());
			user.setField8(values.get("field8").toString());
			user.setField9(values.get("field9").toString());
			
	        dataStore.put(user.getUserId().toString(),user);
	        
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
        
		return Ok;
	}

	@Override
	public Status delete(String table, String key) {
		try{
			dataStore.delete(key);
			
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}

}