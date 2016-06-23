import static org.junit.Assert.*;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.persistence.Query;

//import org.datanucleus.enhancer.DataNucleusEnhancer;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.mongodb.WriteConcern;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.db.User;


public class DataNucleusTests {

    private static EntityManagerFactory emf;

    /**
     * Initializes once.
     */
    @BeforeClass
    public static void init() throws DBException {
        Map properties = new HashMap();

//        DataNucleusEnhancer enhancer = new DataNucleusEnhancer("JPA", null);
//        enhancer.setVerbose(true);
//        enhancer.addPersistenceUnit("MongoDB");
//        enhancer.enhance();

        emf = Persistence.createEntityManagerFactory("MongoDB" , properties);

        setupUsers();
    }

    @AfterClass
    public static void close() {
        emf.close();
    }

    @AfterClass
    public static void removeUsers() {
        EntityManager em = getEntityManager();

        em.getTransaction().begin();

        User userSix = em.find(User.class, "6");
        em.remove(userSix);

        em.getTransaction().commit();
    }

    private static void setupUsers() {
        EntityManager em = getEntityManager();

        // Clear users
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

        if(userSix == null) {
            User user =  new User();
            user.setUserId("6");
            user.setField0("TestU");
            user.setField1("TESTFIELD");

            em.persist(user);
        }

        if(userSeven == null) {
            User user =  new User();
            user.setUserId("7");
            user.setField0("Test7");
            user.setField1("TESTFIELD");

            em.persist(user);
        }

        em.getTransaction().commit();

        em.clear();
        em.close();
    }

    @Test
    public void testPersist() {
        EntityManager em = getEntityManager();

        // Set users
        User user =  new User();
        user.setUserId("1");
        user.setField0("Test");

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
        EntityManager em = getEntityManager();

        // Set users
        User user =  new User();
        user.setUserId("2");
        user.setField0("TEST");

        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();

        User readUser = em.find(User.class, "2");
        assertEquals(readUser.getField0(), "TEST");

        readUser.setField0("NEWTEST");

        em.getTransaction().begin();
        em.merge(readUser);
        em.getTransaction().commit();

        readUser = em.find(User.class, "2");
        assertEquals(readUser.getField0(), "NEWTEST");

        em.clear();
        em.close();
    }

    @Test
    public void testUpsert() {
        EntityManager em = getEntityManager();

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

        em = getEntityManager();

        // CREATE NEW USER and MERGE (detached)
        User newUser = new User();
        newUser.setUserId("3");
        newUser.setField0("NEWTEST");

        em.getTransaction().begin();
        em.merge(newUser);
        em.getTransaction().commit();

        em.clear();
        em.close();

        em = getEntityManager();

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
        EntityManager em = getEntityManager();

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

        em = getEntityManager();

        // Merge detached user
        User testUser = new User();
        testUser.setUserId("4");
        testUser.setField0("NEWTEST");

        em.getTransaction().begin();
        em.merge(testUser);
        em.getTransaction().commit();

        em.clear();
        em.close();

        em = getEntityManager();

        // Read user
        User readUser = em.find(User.class, "4");

//        System.out.println(readUser);
        assertEquals(readUser.getField0(), "NEWTEST");
        assertEquals(readUser.getField1(), "Field1Test");

    }

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
            List<User> users = query.getResultList();

            assertTrue(users.size() > 0);
            //System.out.println(users);
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

            Query query = em.createQuery("Select u from User u WHERE u.userId = '6'");
            List<User> users = query.getResultList();

            assertTrue(users.size() == 1);
            assertEquals("6", users.get(0).getUserId());

            em.clear();
            em.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testQuerySelectFieldWhereIDGeq() {
        try {
            EntityManager em = getEntityManager();

            Query query = em.createQuery("Select u from User u WHERE u.userId >= '3'");
            List<User> users = query.getResultList();

            assertTrue(users.size() > 0);

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

            Query query = em.createQuery("Select u from User u WHERE u.field0 = 'TestU'");
            List<User> users = query.getResultList();

            //System.out.println(users);
            assertTrue(users.get(0).getUserId().equals("6"));

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

            Query query = em.createQuery("Select u from User u WHERE u.field0 = 'TestU' AND u.field1 = 'TESTFIELD'");
            List<User> users = query.getResultList();

            assertTrue(users.get(0).getUserId().equals("6"));

            em.clear();
            em.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testQuerySelectANDOR() {
        try {
            EntityManager em = getEntityManager();

            Query query = em.createQuery("Select u from User u WHERE (u.field0 = 'TestU' OR u.field1 = 'TESTFIELD') AND u.userId = '6'");
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
            EntityManager em = getEntityManager();

            Query query = em.createQuery("Select u from User u WHERE u.field0 LIKE 'Test%' AND u.field1 = 'TESTFIELD'");
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


}
