package com.yahoo.ycsb.db;

import generated.Person;
import generated.User;


import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.Vector;

import org.apache.avro.util.Utf8;
import org.apache.gora.filter.FilterList;
import org.apache.gora.filter.FilterOp;
import org.apache.gora.filter.MapFieldValueFilter;
import org.apache.gora.filter.SingleFieldValueFilter;
import org.apache.gora.query.Query;
import org.apache.gora.query.Result;
import org.apache.gora.store.DataStore;
import org.apache.gora.store.DataStoreFactory;
import org.apache.gora.util.GoraException;
import org.apache.hadoop.conf.Configuration;
import org.fluttercode.datafactory.impl.DataFactory;

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
public class GoraClient extends DB{

	private static final int Ok = 0;

    private static final int Error = -1;
	
	private DataStore<String, Person> dataStore; 
	
	private int amountOps;
	
	private static DataFactory df = new DataFactory();
	
	private final int clearOps = 1000;	
	
	/**
	 * Initializes once.
	 */
	public void init() throws DBException {
	    try {
	    	org.apache.log4j.BasicConfigurator.configure();
			dataStore = DataStoreFactory.getDataStore(String.class, Person.class, new Configuration());
			
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
			executeRead(key);
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}
		
		return Status.OK;
	}
	
	private void executeRead(String key) throws Exception {
		String readType = getProperties().getProperty("readType", "0");
		
		Person person = createPerson(key);
		
//		System.out.println(person);
		
		if(readType.equals("0")) {
			@SuppressWarnings("unused")
			Person p = dataStore.get(key);
			
		} else if(readType.equals("SELECT-PRIMARY")){
			//TODO: Check if can't query
			Person p = dataStore.get(key);
			
			if(!p.equals(person))
				throw new IllegalArgumentException("Invalid user id.");
			
		} else if(readType.equals("EMAIL")){
			Query<String, Person> query = dataStore.newQuery();
			SingleFieldValueFilter<String, Person> filter = new SingleFieldValueFilter<String, Person>();
		    
		    filter.setFieldName(Person.Field.EMAIL.toString());
		    filter.setFilterOp(FilterOp.EQUALS);
		    filter.setFilterIfMissing(true);
		    filter.getOperands().add(new Utf8(person.getEmail().toString()));
		    
		    query.setFilter(filter);
			Result<String, Person> people = query.execute();
			
			System.out.println(people);
			
			Person p = people.get();
			boolean found = false;
			
			while(p != null && people.next()) {
				if(p.equals(person))
					found=true;
				
				p = people.get();
			}
			
			if(!found)
				throw new IllegalArgumentException("Invalid user id.");
		} else if(readType.equals("OR")){
			Query<String, Person> query = dataStore.newQuery();
			FilterList<String,Person> filter = new FilterList<String, Person>(FilterList.Operator.MUST_PASS_ONE);
		} else if(readType.equals("AND")){
			// Query query = em.createQuery("Select p from Person p WHERE p.email = :email AND p.personalnumber = :personalnumber");
			
//			if(!found)
//				throw new IllegalArgumentException("Invalid user id.");
		} else if(readType.equals("BETWEEN")){
			// Query query = em.createQuery("Select p from Person p WHERE p.personalnumber < " + (person.getPersonalnumber() + 100000) + " AND p.personalnumber > " + (person.getPersonalnumber() - 100000)); 
//			if(!people.contains(person))
//				throw new IllegalArgumentException("Invalid user id.");
		}
	}

	@Override
	public Status scan(String table, String startkey, int recordcount, Set<String> fields, Vector<HashMap<String, ByteIterator>> result) {
		try{
//			Query<String, User> query = dataStore.newQuery();
//		    
//		    query.setStartKey(startkey);
//		    query.setLimit(recordcount);
//		    
//		    Result<String, User> res = query.execute();
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}
		
		return Status.OK;
	}

	@Override
	public Status update(String table, String key, HashMap<String, ByteIterator> values) {
		try{
//			User user = dataStore.get(key);
//		    
//			if(values.containsKey("field0") && values.get("field0") != null)
//				user.setField0(values.get("field0").toString());
//			
//			if(values.containsKey("field1") && values.get("field1") != null)
//				user.setField1(values.get("field1").toString());
//			
//			if(values.containsKey("field2") && values.get("field2") != null)
//				user.setField2(values.get("field2").toString());
//			
//			if(values.containsKey("field3") && values.get("field3") != null)
//				user.setField3(values.get("field3").toString());
//			
//			if(values.containsKey("field4") && values.get("field4") != null)
//				user.setField4(values.get("field4").toString());
//			
//			if(values.containsKey("field5") && values.get("field5") != null)
//				user.setField5(values.get("field5").toString());
//			
//			if(values.containsKey("field6") && values.get("field6") != null)
//				user.setField6(values.get("field6").toString());
//			
//			if(values.containsKey("field7") && values.get("field7") != null)
//				user.setField7(values.get("field7").toString());
//			
//			if(values.containsKey("field8") && values.get("field8") != null)
//				user.setField8(values.get("field8").toString());
//			
//			if(values.containsKey("field9") && values.get("field9") != null)
//				user.setField9(values.get("field9").toString());
//			
//			// Put will overwrite if ID already exists
//			dataStore.put(key, user);
			
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}
		
		return Status.OK;
	}

	@Override
	public Status insert(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			Person person = createPerson(key); 
			
	        dataStore.put(person.getUserId().toString(), person);
	        
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}
        
		return Status.OK;
	}

	private Person createPerson(String key) {
		df = DataFactory.create(getSeed(key));
		
		Person person = new Person();
		
		person.setUserId(key);
		person.setFirstName(df.getFirstName());
		person.setLastName(df.getLastName());
		person.setBirthDate(df.getNumberBetween(1990, 2015));
		person.setCompany(df.getBusinessName());
		person.setCity(df.getCity());
		person.setAddress(df.getAddress());
		person.setEmail(df.getEmailAddress());
		person.setStreetname(df.getStreetName());
		person.setStreetsuffix(df.getStreetSuffix());
		person.setPersonalnumber(df.getNumberBetween(0, Integer.MAX_VALUE));
		
		return person;
	}
	
	/**
	 * Converts a random string into a long.
	 * @param key
	 * @return
	 */
	private long getSeed(String key) {
		String seed = "";
		
		for (int i=0;i< key.length();i++)
		{
			if(Character.isDigit(key.charAt(i)))
		      seed = seed + "" + key.charAt(i);
		}   
		
		return Long.parseLong(seed);
	}


	@Override
	public Status delete(String table, String key) {
		try{
			dataStore.delete(key);
			
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}
		
		return Status.OK;
	}

}