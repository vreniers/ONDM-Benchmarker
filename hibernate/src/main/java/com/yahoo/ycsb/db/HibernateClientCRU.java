package com.yahoo.ycsb.db;


import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Set;
import java.util.Vector;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.transaction.TransactionManager;

import com.yahoo.ycsb.ByteIterator;
import com.yahoo.ycsb.DB;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.Status;
import com.arjuna.ats.jta.*;

/**
 * Database interface layer for the Hibernate OGM abstraction layer.
 * The YCSB benchmark will use this layer to communicate with Hibernate OGM.
 * This abstraction layer will then map the calls to the selected NoSQL datastore.
 * 
 * @author vincent
 */
public class HibernateClientCRU extends DB{
	
	private static final Status Ok = Status.OK;

    private static final Status Error = Status.ERROR;
    
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("hibernate-ogm-mongo");;
	
	private int amountOps;
	
	private final int clearOps = 1000;	
	
	/**
	 * Initializes once.
	 */
	public void init() throws DBException {
        amountOps = 1;
	}
	
	/**
     * Cleanup any state for this DB. Called once per DB instance; there is one
     * DB instance per client thread.
     */
    public void cleanup() throws DBException
    {
        emf.close();
    }
	
	@Override
	public Status read(String table, String key, Set<String> fields, HashMap<String, ByteIterator> result) {
		try{
			EntityManager em = getEntityManager();
			
			User u = em.find(User.class, key);
			
			if(amountOps ++ % clearOps == 0)
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
			TransactionManager tm = getTransactionManager();
			tm.begin();
			
			EntityManager em = getEntityManager();
			
			// Value set
			// Hibernate does not allow upsert
			User user = em.find(User.class, key);
			
			if(user == null ) {
				throw new Exception("User does not exist");
			}
			
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
			
			em.merge(user);
			tm.commit();
			
			if(amountOps ++ % clearOps == 0)
				em.clear();
			
	        em.close();
		} catch (Exception e) {
			e.printStackTrace();
			
			try {
				Thread.sleep(4000);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			return Error;
		}
		
		return Ok;
	}

	@Override
	public Status insert(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			User user =  new User(key,
					values.get("field0").toString(), values.get("field1").toString(), values.get("field2").toString(), 
					values.get("field3").toString(), values.get("field4").toString(), values.get("field5").toString(), 
					values.get("field6").toString(), values.get("field7").toString(), values.get("field8").toString(), 
					values.get("field9").toString());
			
			
			TransactionManager tm = getTransactionManager();
			
	        tm.begin();   
	        EntityManager em = getEntityManager();
			em.persist(user);
			tm.commit();
			
			if(amountOps ++ % clearOps == 0)
				em.clear();
			
	        em.close();
		} catch (Exception e) {
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
			TransactionManager tm = getTransactionManager();
			
	        tm.begin();
	        EntityManager em = getEntityManager();
	        em.remove(em.find(User.class, key));
			tm.commit();

			if(amountOps ++ % clearOps == 0)
				em.clear();
			
	        em.close();
		} catch (Exception e) {
			e.printStackTrace();
			return Error;
		}
		
		return Ok;
	}
	
	/**
	 * Returns the TransactionManager.
	 * 
	 * @return
	 */
	public static TransactionManager getTransactionManager() {
		TransactionManager transactionManager = com.arjuna.ats.jta.TransactionManager.transactionManager();
		
		return transactionManager;
	}
}
