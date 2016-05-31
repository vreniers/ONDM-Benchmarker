import static org.junit.Assert.*;


import java.util.List;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.transaction.TransactionManager;

import org.fluttercode.datafactory.impl.DataFactory;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.impetus.client.mongodb.MongoDBClientProperties;
import com.mongodb.WriteConcern;
import com.yahoo.ycsb.db.Person;
import com.yahoo.ycsb.db.User;


public class KunderaTests {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("kundera-mongodb");
	
	private static EntityManager getEM() {
		EntityManager em = emf.createEntityManager();
    	
    	em.setFlushMode(FlushModeType.COMMIT);
    	em.setProperty(MongoDBClientProperties.WRITE_CONCERN, WriteConcern.ACKNOWLEDGED);
    	
    	return em;
	}
	
	@AfterClass
	public static void removeUsers() {
		EntityManager em = getEM();
		
		User userTwo = em.find(User.class, "2");
		User userSix = em.find(User.class, "6");
		User userSeven = em.find(User.class, "7");
		
		Person person = em.find(Person.class, "1");
		
		if(userTwo!=null)
			em.remove(userTwo);
		if(userSix!=null)
			em.remove(userSix);
		if(userSeven!=null)
			em.remove(userSeven);
		if(person!=null)
			em.remove(person);
	}
	
	@BeforeClass
	public static void setUser() {
		// Delete users
		EntityManager em = getEM();
		
        em.getTransaction().begin();
        
        User userOne = em.find(User.class, "1");
		User userTwo = em.find(User.class, "2");
		User userThree = em.find(User.class, "3");
		User userFour = em.find(User.class, "4");
		User userSix = em.find(User.class, "6");
		User userSeven = em.find(User.class, "7");
		
		if(userOne != null)
			em.remove(userOne);
		
		if(userTwo != null)
			em.remove(userTwo);
		
		if(userThree != null)
			em.remove(userThree);
		
		if(userFour != null)
			em.remove(userFour);
        
        em.getTransaction().commit();
		
		// Set users
		User user = new User();
		user.setUserId("2");
		user.setField0("Test");
		user.setField1("TESTFIELD");
		
		if(userSix == null) {
			userSix =  new User();
			userSix.setUserId("6");
			userSix.setField0("TestTU");
			userSix.setField1("TESTFIELD");
			
	        em.persist(userSix);
		}
		
		if(userSeven == null) {
			userSeven =  new User();
			userSeven.setUserId("7");
			userSeven.setField0("TestT7");
			userSeven.setField1("TESTFIELD");
			
	        em.persist(userSeven);
		}
		
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();
		
		em.clear();
		em.close();
	}
	
	@Test
	public void testNameGen() {
		DataFactory df = new DataFactory();
	    for (int i = 0; i < 100; i++) {          
	        String name = df.getFirstName() + " "+ df.getLastName();
	        // System.out.println(name);
	    }
	}
	
	@Test
	public void testPersist() {
		User user = new User();
		user.setUserId("1");
		user.setField0("Test");
		
		EntityManager em = getEM();
		
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();
		
		User readUser = em.find(User.class, "1");
		
		assertEquals(readUser.getField0(), "Test");
		
		em.clear();
		em.close();
	}
	
	@Test
	public void testUpdate() {
		EntityManager em = getEM();
		
		// Value set
		User readUser = em.find(User.class, "2");
		assertEquals(readUser.getField0(), "Test");
		
		readUser.setField0("NEW");
		
		em.getTransaction().begin();
		em.merge(readUser);		
		em.getTransaction().commit();
		
		// New value set
		readUser = em.find(User.class, "2");
		assertEquals(readUser.getField0(), "NEW");
		
		em.clear();
		em.close();
	}
	
	/**
	 * Tests if an entity can be updated using merge.
	 * A new entity is created (detached) and merged.
	 * 
	 * Then it is verified if the original record is updated.
	 */
	@Test
    public void testUpsert() {
    	EntityManager em = getEM();
    	
    	// Set users
		User user =  new User();
		user.setUserId("3");
		user.setField0("TEST");
		
		em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        
        User readUser = em.find(User.class, "3");
        assertEquals(readUser.getField0(), "TEST");
        
        em.clear();
        em.close();
        
        em = getEM();
        
        // CREATE NEW USER and MERGE (detached)
        User newUser = new User();
        newUser.setUserId("3");
        newUser.setField0("NEWTEST");
        
        em.getTransaction().begin();
        em.merge(newUser);
        em.getTransaction().commit();
        
        em.clear();
        em.close();
        
        em = getEM();
        
        readUser = em.find(User.class, "3");
        assertEquals(readUser.getField0(), "NEWTEST");
        
        em.clear();
		em.close();
    }
	
	/**
	 * Makes sure no other fields are null with merge as update.
	 */
	@Test
	public void testUpsertDetail() {
		EntityManager em = getEM();
    	
    	// Set users
		User user =  new User();
		user.setUserId("4");
		user.setField0("TEST");
		user.setField1("Field1Test");
		
		em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        
        em.clear();
        em.close();
        
        em = getEM();
        
        // Merge detached user
        User testUser = new User();
        testUser.setUserId("4");
        testUser.setField0("NEWTEST");
        
        em.getTransaction().begin();
        em.merge(testUser);
        em.getTransaction().commit();
        
        em.clear();
        em.close();
        
        em = getEM();
        
        // Read user
        User readUser = em.find(User.class, "4");
        assertEquals(readUser.getField0(), "NEWTEST");
        assertEquals(readUser.getField1(), "Field1Test");
	}
	
	@Test
	public void testQuerySelect() {
		try {			
			EntityManager em = getEM();
			
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
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u"); 
			List<User> users = query.getResultList();
			
			assertTrue(users.size() > 0);
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectFieldWhereID() {
		try {			
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u WHERE u.userId = 2"); 
			List<User> users = query.getResultList();
			
			assertTrue(users.size() == 1);
			assertEquals("2", users.get(0).getUserId());
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectFieldWhereSecondaryField() {
		try {			
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u WHERE u.field0 = 'Test'"); 
			List<User> users = query.getResultList();
			
			System.out.println(users);
			assertTrue(users.get(0).getUserId().equals("2"));
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectAND() {
		try {			
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u WHERE u.field0 = 'Test' AND u.field1 = 'TESTFIELD'"); 
			List<User> users = query.getResultList();
			
			assertTrue(users.get(0).getUserId().equals("2"));
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	

	@Test
	public void testQuerySelectANDOR() {
		try {			
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u WHERE (u.field0 = 'TestTU' OR u.field1 = 'TESTFIELD') AND u.userId = 6"); 
			List<User> users = query.getResultList();
			
			assertTrue(users.get(0).getUserId().equals("6"));
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQuerySelectLIKE() {
		try {			
			EntityManager em = getEM();
			
			Query query = em.createQuery("Select u from User u WHERE u.field0 LIKE 'TestT%' AND u.field1 = 'TESTFIELD'"); 
			List<User> users = query.getResultList();
			
			for(User user: users) {
				assertTrue(user.getUserId().equals("6") || user.getUserId().equals("7"));
			}
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testQueryBetweenDATE(){
		try {
			DataFactory df = DataFactory.create(1);
			
			Person person = new Person("1", df.getFirstName(), df.getLastName(), 
					df.getBirthDate().getYear(), df.getBusinessName(), df.getCity(), 
					df.getAddress(), df.getEmailAddress(), df.getStreetName(), 
					df.getStreetSuffix(), df.getNumberBetween(0, Integer.MAX_VALUE));
			
			EntityManager em = getEM();
			em.persist(person);
			
			String queryStr = "Select p from Person p WHERE p.birthDate >= " + (person.getBirthDate() -1)  + 
					" AND p.birthDate <= " + (person.getBirthDate() + 1);
			
			Query query = em.createQuery(queryStr); 
			List<Person> people = query.getResultList();
			
			boolean found = false;
			
			for(Person personFound: people) {
				if(personFound.getUserId().equals("1"))
					found = true;
			}
			
			assertTrue(found);
			
			em.clear();
			em.close();
        } catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	/**
	 * Reason for false between query
	 */
	@Test
	public void testSpecificQueryBetween() {
		EntityManager em = getEM();
		Person person = em.find(Person.class, "user2845003657132170364");
		
		System.out.println(person);
		
		String qry = "Select p from Person p WHERE p.personalnumber < " + (person.getPersonalnumber() + 100000) + " AND p.personalnumber > " + (person.getPersonalnumber() - 100000);
		System.out.println(qry);
		Query query = em.createQuery(qry); 
		List<Person> people = query.setMaxResults(100000).getResultList();
		
		System.out.println(people.size());
		
	}
	
	@Test
	public void testDeletePerformance() {
		EntityManager em = getEM();
		
		DataFactory df;
		Random rnd = new Random(45845854);
		
		for(int i=0; i<= 1000; i++) {
			int usr = rnd.nextInt();
			df = DataFactory.create(usr);
			
			Person person = new Person(new Integer(usr).toString(), df.getFirstName(), df.getLastName(), 
					df.getNumberBetween(1990, 2015), df.getBusinessName(), df.getCity(), 
					df.getAddress(), df.getEmailAddress(), df.getStreetName(), 
					df.getStreetSuffix(), df.getNumberBetween(0, Integer.MAX_VALUE));
			
			em.persist(person);
		}
		
		rnd = new Random(45845854);
		
		for(int i=0; i<= 1000; i++) {
			int usr = rnd.nextInt();
			
			Person p = em.find(Person.class, usr);
			em.remove(p);
		}
		
		
	}


}
