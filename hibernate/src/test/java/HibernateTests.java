import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.junit.BeforeClass;
import org.junit.Test;

import com.yahoo.ycsb.db.HibernateClient;
import com.yahoo.ycsb.db.User;


public class HibernateTests {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("hibernate-ogm-mongo");;
	
	
	/**
	 * Utility method for the creation of an EM.
	 * 
	 * @return
	 */
	private static EntityManager getEntityManager() {
		EntityManager em = emf.createEntityManager();
		em.setFlushMode(FlushModeType.COMMIT);
		
		return em;
	}
	

	@BeforeClass
	public static void setUser() {
		// Delete users
        try {
			HibernateClient.getTransactionManager().begin();
			EntityManager em = getEntityManager();
		
	        User userOne = em.find(User.class, "1");
	        User userTwo = em.find(User.class, "2");
	        User userThree = em.find(User.class, "3");
	        
	        if(userOne != null)
	        	em.remove(userOne);
	        
	        if(userTwo != null)
	        	em.remove(userTwo);
	        
	        if(userThree != null)
	        	em.remove(userThree);
	        
	        HibernateClient.getTransactionManager().commit();
        } catch (Exception e) {
			e.printStackTrace();
		} 
		
		// Set users
        try {
        	User user = new User();
    		user.setUserId("2");
    		user.setField0("TESTTWO");
    		user.setField1("TESTFIELD");
    		
    		HibernateClient.getTransactionManager().begin();
			EntityManager em = getEntityManager();
		
			em.persist(user);
	        
	        HibernateClient.getTransactionManager().commit();
	        
	        em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	
	@Test
	public void testPersist() {
        try {
        	User user = new User();
    		user.setUserId("1");
    		user.setField0("Test");
    		
			HibernateClient.getTransactionManager().begin();
			EntityManager em = getEntityManager();
		
			em.persist(user);
	        
	        HibernateClient.getTransactionManager().commit();
	        
	        User readUser = em.find(User.class, "1");
			
			assertEquals(readUser.getField0(), "Test");
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		} 		
	}
	
	@Test
    public void testUpdate() {
		try {
			EntityManager em = getEntityManager();
			
			// Value set
			User readUser = em.find(User.class, "2");
			assertEquals(readUser.getField0(), "TESTTWO");
			
			readUser.setField0("NEW");
    		
			HibernateClient.getTransactionManager().begin();
			
			em.merge(readUser);
	        
	        HibernateClient.getTransactionManager().commit();
	        
	        // New value set
			readUser = em.find(User.class, "2");
			assertEquals(readUser.getField0(), "NEW");
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}		
    }
	
	@Test
	public void testUpsert() {
		try {			
			User user = new User();
    		user.setUserId("3");
    		user.setField0("TESTT");
    		
    		HibernateClient.getTransactionManager().begin();
			EntityManager em = getEntityManager();
			em.persist(user);
	        HibernateClient.getTransactionManager().commit();
			
			// Check value set
			User readUser = em.find(User.class, "3");
			assertEquals(readUser.getField0(), "TESTT");
			
			em.clear();
			
			// CREATE NEW USER and MERGE (detached)
			User newUser = new User();
			newUser.setUserId("3");
			newUser.setField0("TESTTHREE");
    		
			HibernateClient.getTransactionManager().begin();
			
			em.merge(newUser);
	        
	        HibernateClient.getTransactionManager().commit();
	        
	        em.clear();
	        
	        // New value set
			readUser = em.find(User.class, "3");
			assertEquals(readUser.getField0(), "TESTTHREE");
			
			System.out.println(readUser);
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	@Test
	public void testQuerySelect() {
		try {			
			EntityManager em = getEntityManager();
			
			Query query = em.createQuery("Select u from User u"); 
			List<User> users = query.getResultList();
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectField() {
		try {			
			EntityManager em = getEntityManager();
			
			Query query = em.createQuery("Select u from User u"); 
			Object user = query.getFirstResult();
			
			assertNotEquals(user, null);
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectFieldWhereID() {
		try {			
			EntityManager em = getEntityManager();
			
			Query query = em.createQuery("Select u from User u WHERE u.userId = 2"); 
			User user = (User) query.getSingleResult();
			
			assertEquals("2", user.getUserId());
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectFieldWhereSecondaryField() {
		try {			
			EntityManager em = getEntityManager();
			
			Query query = em.createQuery("Select u from User u WHERE u.field0 = 'TESTTWO'"); 
			User user = (User) query.getSingleResult();
			
			assertTrue(user.getUserId().equals("2"));
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectAND() {
		try {			
			EntityManager em = getEntityManager();
			
			Query query = em.createQuery("Select u from User u WHERE u.field0 = 'TESTTWO' AND u.field1 = 'TESTFIELD'"); 
			User user = (User) query.getSingleResult();
			
			assertTrue(user.getUserId().equals("2"));
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	

}
