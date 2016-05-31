import static org.junit.Assert.*;
import generated.User;

import org.apache.gora.store.DataStore;
import org.apache.gora.store.DataStoreFactory;
import org.apache.gora.util.GoraException;
import org.apache.hadoop.conf.Configuration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.yahoo.ycsb.DBException;


public class ApacheGoraTests {
	
	private static DataStore<String, User> dataStore; 
	
	/**
	 * Initializes once.
	 */
	@BeforeClass
	public static void init() throws DBException {
	    try {
			dataStore = DataStoreFactory.getDataStore(String.class, User.class, new Configuration());
		} catch (GoraException e) {
			e.printStackTrace();
		}
	    
	    setupUsers();
	}
	
	private static void setupUsers() {
		dataStore.delete("1");
		dataStore.delete("2");
		dataStore.delete("3");
	}
	
	/**
     * Cleanup any state for this DB. 
     * 
     * It is very important to close the datastore properly, otherwise
     * some data loss might occur.
     */
	@AfterClass
    public static void cleanup() throws DBException
    {
        if(dataStore != null)
          dataStore.close();
    }

	@Test
	public void testPersist() {
		User user = new User();
		user.setUserId("1");
		user.setField0("Test");
		
        dataStore.put(user.getUserId().toString(),user);
        
        User readUser = dataStore.get("1");
        assertEquals(readUser.getField0().toString(), "Test");
	}
	
	@Test
	public void testUpdate() {
		User user = new User();
		user.setUserId("2");
		user.setField0("TESTT");
		user.setField1("Blabla");
		
        dataStore.put(user.getUserId().toString(),user);
        
        User readUser = dataStore.get("2");
        assertEquals(readUser.getField0().toString(), "TESTT");
        
        readUser.setField0("NEWTEST");
        dataStore.put("2", readUser);
        
        readUser = dataStore.get("2");
        assertEquals(readUser.getField0().toString(), "NEWTEST");
        assertEquals(readUser.getField1().toString(), "Blabla");
	}	
	
	@Test
	public void testWrite() {
		User user = new User();
		user.setUserId("3");
		user.setField0("blabla");
		
        dataStore.put(user.getUserId().toString(),user);
	}

}
