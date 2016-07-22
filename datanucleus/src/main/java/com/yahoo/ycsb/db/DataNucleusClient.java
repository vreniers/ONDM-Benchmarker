package com.yahoo.ycsb.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.persistence.Query;

//import org.datanucleus.enhancer.DataNucleusEnhancer;
import org.fluttercode.datafactory.impl.DataFactory;

import com.mongodb.WriteConcern;
import com.yahoo.ycsb.ByteIterator;
import com.yahoo.ycsb.DB;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.Status;


/**
 * Database interface layer for DataNucleus
 * This abstraction layer will communicate with a selected NoSQL datastore.
 *
 * @author vincent
 */
public class DataNucleusClient extends DB{

	private static final int Ok = 0;

	private static final int Error = -1;

	private static EntityManagerFactory emf;

	private static DataFactory df = new DataFactory();

	private int amountOps;

	private final int clearOps = 1000;

	private int closedThreads = 0;

	/**
	 * Initializes once.
	 */
	public void init() throws DBException {
		Map properties = new HashMap();

//        DataNucleusEnhancer enhancer = new DataNucleusEnhancer("JPA", null);
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

			executeRead(em, key);

			if(amountOps++ % clearOps == 0)
				em.clear();

			em.close();
		} catch (Exception e) {
			e.printStackTrace();
			return Status.ERROR;
		}

		return Status.OK;
	}

	/**
	 * Executes the read according to the specified type.
	 *
	 * 0 (default)=EntityManager Read
	 * SELECT-PRIMARY=SELECT by primary ID
	 * OR=SELECT by firstName or lastName
	 * EMAIL=SELECT by Email
	 * AND=SELECT by email AND personalNumber
	 * BETWEEN=SELECT By personalNumber between < 100.000 and > 100.000
	 *
	 * @param em
	 * @param key
	 * @throws Exception
	 */
	private void executeRead(EntityManager em, String key) throws Exception {
		String readType = getProperties().getProperty("readType", "0");

		df = DataFactory.create(getSeed(key));

		Person person = new Person(key, df.getFirstName(), df.getLastName(),
				df.getNumberBetween(1990, 2015), df.getBusinessName(), df.getCity(),
				df.getAddress(), df.getEmailAddress(), df.getStreetName(),
				df.getStreetSuffix(), df.getNumberBetween(0, Integer.MAX_VALUE));

		if(readType.equals("0")) {
			@SuppressWarnings("unused")
			Person p = em.find(Person.class, key);

//			System.out.println(p);
		} else if(readType.equals("SELECT-PRIMARY")){
			Query query = em.createQuery("Select p from Person p WHERE p.userId = '" + key + "'");
			List<Person> people = query.getResultList();

//			System.out.println(people.size());
//			System.out.println(people);
//
//			System.out.println("------");
//			for(Person p: people) {
//				System.out.println(p);
//			}
			if(!people.contains(person))
				throw new IllegalArgumentException("Invalid user id.");
		} else if(readType.equals("EMAIL")){
			Query query = em.createQuery("SELECT p from Person p WHERE p.email = :email");
			query.setParameter("email", person.getEmail());

			List<Person> people = query.getResultList();
			
			if(!people.contains(person))
				throw new IllegalArgumentException("Invalid user id.");
		} else if(readType.equals("OR")){
			String queryStr = "Select p from Person p WHERE p.firstName = :firstname OR p.lastName = :lastname";

			Query query = em.createQuery(queryStr);
			query.setParameter("firstname", person.getFirstName());
			query.setParameter("lastname", person.getLastName());


			List<Person> people = query.setMaxResults(200000).getResultList();
//			System.out.println(people.size());

			if(!people.contains(person))
				throw new IllegalArgumentException("Invalid user id: " + key);
		} else if(readType.equals("AND")){
			Query query = em.createQuery("Select p from Person p WHERE p.email = :email AND p.personalnumber = :personalnumber");
			query.setParameter("email", person.getEmail());
			query.setParameter("personalnumber", person.getPersonalnumber());

			List<Person> people = query.getResultList();
//			System.out.println(people.size());
			if(!people.contains(person))
				throw new IllegalArgumentException("Invalid user id.");
		} else if(readType.equals("BETWEEN")){
			Query query = em.createQuery("Select p from Person p WHERE p.personalnumber < " + (person.getPersonalnumber() + 100000) + " AND p.personalnumber > " + (person.getPersonalnumber() - 100000));
			List<Person> people = query.setMaxResults(100000).getResultList();

			if(!people.contains(person))
				throw new IllegalArgumentException("Invalid user id.");
		}
		/** Seems to be a limit on how much results u can retrieve **/
	}

	@Override
	public Status scan(String table, String startkey, int recordcount, Set<String> fields, Vector<HashMap<String, ByteIterator>> result) {
		System.out.println("scan");

		return Status.OK;
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
			return Status.ERROR;
		}

		return Status.OK;
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
	public Status insert(String table, String key, HashMap<String, ByteIterator> values) {
		try{
			EntityManager em = getEntityManager();
			em.getTransaction().begin();

			df = DataFactory.create(getSeed(key));

			Person person = new Person(key, df.getFirstName(), df.getLastName(),
					df.getNumberBetween(1990, 2015), df.getBusinessName(), df.getCity(),
					df.getAddress(), df.getEmailAddress(), df.getStreetName(),
					df.getStreetSuffix(), df.getNumberBetween(0, Integer.MAX_VALUE));

			em.persist(person);

			em.getTransaction().commit();

			if(amountOps++ % clearOps == 0)
				em.clear();

			em.close();
		} catch (Exception e){
			e.printStackTrace();
			return Status.ERROR;
		}

		return Status.OK;
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
			return Status.ERROR;
		}

		return Status.OK;
	}
}