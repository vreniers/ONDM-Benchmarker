package com.yahoo.ycsb.db;


import java.util.HashMap;

import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;

//import org.datanucleus.enhancer.DataNucleusEnhancer;

import com.mongodb.WriteConcern;
import com.yahoo.ycsb.ByteIterator;
import com.yahoo.ycsb.DB;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.Status;


/**
 * Database interface layer for the Kundera abstraction layer.
 * This abstraction layer will communicate with a selected NoSQL datastore.
 * 
 * @author vincent
 */
public class DataNucleusClientCRU extends DB{
	
	private static final Status Ok = Status.OK;

    private static final Status Error = Status.ERROR;
    
    private static EntityManagerFactory emf;
    
    private int amountOps;
    
    private final int clearOps = 1000;
    
    private int closedThreads = 0;
    
	/**
	 * Initializes once.
	 */
	public void init() throws DBException {
		Map properties = new HashMap();
		
//		DataNucleusEnhancer enhancer = new DataNucleusEnhancer("JPA", null);
//        enhancer.setVerbose(true);
//        enhancer.addPersistenceUnit("MongoDB");
//        enhancer.enhance();

        
		emf = Persistence.createEntityManagerFactory("MongoDB" , properties);
        amountOps = 1;
	}
	
	/**
     * Cleanup any state for this DB. Called once per DB instance; there is one
     * DB instance per client thread.
     */
    public void cleanup() throws DBException
    {
    	if(++closedThreads == Integer.valueOf(getProperties().getProperty("threadcount", "1")))
    		emf.close();
    }
	
	@Override
	public Status read(String table, String key, Set<String> fields, HashMap<String, ByteIterator> result) {
		try{
			EntityManager em = getEntityManager();
			
			User u = em.find(User.class, key);
			
//			System.out.println(u);
			
			if(amountOps++ % clearOps == 0)
				em.clear();
			
	        em.close();
		} catch (Exception e) {
			e.printStackTrace();
			return Error;
		}
        
        return Ok;
	}

	@Override
	public Status scan(String table, String startkey, int recordcount, Set<String> fields, Vector<HashMap<String, ByteIterator>> result) {
		System.out.println("scan");
		
		return Ok;
	}

	@Override
	public Status update(String table, String key, HashMap<String, ByteIterator> values) {		
		try{
			EntityManager em = getEntityManager();
			
			User user = em.find(User.class, key);
			
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
			
			em.getTransaction().begin();
			em.merge(user);
			em.getTransaction().commit();
			
			if(amountOps++ % clearOps == 0)
				em.clear();
			
	        em.close();
			
		} catch(Exception e) {
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}

	@Override
	public Status insert(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			EntityManager em = getEntityManager();
			em.getTransaction().begin();
			
			User user =  new User(key,
					values.get("field0").toString(), values.get("field1").toString(), values.get("field2").toString(), 
					values.get("field3").toString(), values.get("field4").toString(), values.get("field5").toString(), 
					values.get("field6").toString(), values.get("field7").toString(), values.get("field8").toString(), 
					values.get("field9").toString());
			
	        em.persist(user);
	        
	        em.getTransaction().commit();
	        
	        if(amountOps++ % clearOps == 0)
				em.clear();
	        
	        em.close();			
		} catch (Exception e){
			e.printStackTrace();
			return Error;
		}
        
		return Ok;
	}

	/**
	 * Utility method for the creation of an EM.
	 * 
	 * @return
	 */
	private EntityManager getEntityManager() {
		EntityManager em = emf.createEntityManager();
		em.setFlushMode(FlushModeType.COMMIT);
		
		return em;
	}

	@Override
	public Status delete(String table, String key) {
		try{
			EntityManager em = getEntityManager();
			
			em.getTransaction().begin();
			em.remove(em.find(User.class, key));
			em.getTransaction().commit();
			
			em.clear();
	        em.close();
		} catch (Exception e) {
			e.printStackTrace();	
			return Error;
		}
		
        return Ok;
	}
}