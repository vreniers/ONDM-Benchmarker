package benchmarker;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

public class Benchmarker {

	private final ArrayList<String> databaseLayers;
	private final ArrayList<String> queryCmds;
	
	private final static String SLEEP_CMD = "sleep";
	
	private final static int MAX_INSERTION = 1000000 * 10;
	private final static int MAX_OPS = 10000;
	
	private final static int INIT_OPS = 10000;
	private final static int INIT_RECORDS = 50000;
	
	private final static float INSERTION_INCREMENT = (float) 1.75;
	private final static float OPERATION_INCREMENT = (float) 1.75;
	
	// FIX LARGER TIMEOUT 300
	private final static int TIMEOUT = 1200;
	
	// 300
	private final static int WORKLOAD_TIMEOUT = 120;
	
	private final static String host = "localhost";
//	private final static String host = "laarne.labo1.cs.kuleuven.be";
	
	private final static boolean cluster = false;
	
	public static void main(String[] args){
		new Benchmarker();
	}
	/**
	 *  python ./bin/ycsb load kundera -P workloads/workloada -threads 1
	 *  
	 * Parameters:
	 * -threads 10
	 * -load
	 * -db client layer
	 * -P workloads/workloada
	 * -p parameter=value
	 * 
	 *  0 (default)=EntityManager Read
	 * SELECT-PRIMARY=SELECT by primary ID
	 * OR=SELECT by firstName or lastName
	 * EMAIL=SELECT by Email
	 * AND=SELECT by email AND personalNumber
	 * BETWEEN=SELECT By personalNumber between < 100.000 and > 100.000
	 */
	public Benchmarker() {
		databaseLayers = new ArrayList<String>();
		databaseLayers.add("hibernate");
//		databaseLayers.add("playorm");
		databaseLayers.add("eclipselink");
		databaseLayers.add("mongodb");
//		databaseLayers.add("gora");
		databaseLayers.add("kundera");
		
		queryCmds = new ArrayList<String>();
		queryCmds.add("0");
		queryCmds.add("SELECT-PRIMARY");
		queryCmds.add("EMAIL");
		queryCmds.add("AND");
		queryCmds.add("BETWEEN");
//		queryCmds.add("OR");
//		
		start();
	}
	
	private void start() {
		for (String layer: databaseLayers) {
			loadDatabase(layer, MAX_INSERTION);
			// Transaction phase
			
//			startUpdateTests(layer);
			
			// Clear space
//			dropDatabase(layer);
		
			startReadTests(layer);
			startReadTests(layer);
			startReadTests(layer);
			startReadTests(layer);
			
			
			String properties="-p readType=OR";
			
			runBenchmark(layer, false, 1, "read-workload", MAX_INSERTION, 1000, properties);
			runBenchmark(layer, false, 1, "read-workload", MAX_INSERTION, 1000, properties);
			runBenchmark(layer, false, 1, "read-workload", MAX_INSERTION, 1000, properties);
			
//			startReadTests(layer);
			// Transaction phase
//			startReadUpdate(layer);
//			startReadModify(layer);
			
			// Clear space
			dropDatabase(layer);
		}
	}
	
	/**
	 * Mix of reading records and reading records, modifying them.
	 * 
	 * @param layer
	 */
	private void startReadModify(String layer) {
		int ops = INIT_OPS;
		
		dropDatabase(layer);
		loadDatabase(layer, MAX_INSERTION);
		
		while(ops <= MAX_OPS) {
			runBenchmark(layer, false, 1, "read-modify-workload", MAX_INSERTION , ops);
			
			ops *= OPERATION_INCREMENT;
		}
		
		runBenchmark(layer, false, 1, "read-modify-workload", MAX_INSERTION , MAX_OPS);
	}
	
	/**
	 * Timeout after workload
	 */
	private void timeout() {
		System.out.println(SLEEP_CMD + " " + WORKLOAD_TIMEOUT);
	}
	
	/**
	 * Mix of read and update operations.
	 * 
	 * @param layer
	 */
	private void startReadUpdate(String layer) {
		int ops = INIT_OPS;
		
//		dropDatabase(layer);
//		loadDatabase(layer, MAX_INSERTION);
		
		while(ops <= MAX_OPS) {
			runBenchmark(layer, false, 1, "read-update-workload", MAX_INSERTION, ops);
			
			ops *= OPERATION_INCREMENT;
		}
		
		runBenchmark(layer, false, 1, "read-update-workload", MAX_INSERTION, MAX_OPS);
	}
	
	/**
	 * Executes update operations.
	 * 
	 * @param layer
	 */
	private void startUpdateTests(String layer) {
		int ops = INIT_OPS;
		
//		dropDatabase(layer);
//		loadDatabase(layer, MAX_INSERTION);
		
		while(ops <= MAX_OPS) {			
			runBenchmark(layer, false, 1, "update-workload", MAX_INSERTION, ops);
			
			ops *= OPERATION_INCREMENT;
		}
		
		runBenchmark(layer, false, 1, "update-workload", MAX_INSERTION, MAX_OPS);
	}
	
	/**
	 * Executes read operations.
	 * 
	 * @param layer
	 */
	private void startReadTests(String layer) {
		for(String query: queryCmds) {
			String properties="-p readType=" + query;
			int ops = INIT_OPS;
			
			while(ops <= MAX_OPS) {
				runBenchmark(layer, false, 1, "read-workload", MAX_INSERTION, ops, properties);
				
				ops *= OPERATION_INCREMENT;
			}
			
			runBenchmark(layer, false, 1, "read-workload", MAX_INSERTION, MAX_OPS, properties);
		}
	}
	
	/**
	 * Insert records for a given layer. 
	 * Each time with more records. Then clear the database again.
	 * @param layer
	 */
	private void startInsertionTests(String layer) {
		int records = INIT_RECORDS;
		
		while(records <= MAX_INSERTION) {
			dropDatabase(layer);
			loadDatabase(layer, records);
			
			records *= INSERTION_INCREMENT;
		}
		
		dropDatabase(layer);
		loadDatabase(layer, MAX_INSERTION);
	}
	
	private void runBenchmark(String layer, boolean loadPhase, int threads,
			String workload, int nrOfRecords, int nrOfOps) {
		runBenchmark(layer, loadPhase, threads, workload, nrOfRecords, nrOfOps, "");
	}
	
	/**
	 * Run the benchmark for a certain phase: load or transaction (operations).
	 * 
	 * @param layer			Chosen database layer (e.g. kundera / hibernate / eclipselink / ..)
	 * @param loadPhase 	True / False
	 * @param threads		Amount of threads
	 * @param workload		Workload: workloada / workloadb / workloadc / ...
	 * @param nrOfRecords	Amount of records to be inserted
	 * @param nrOfOps
	 */
	private void runBenchmark(String layer, boolean loadPhase, int threads,
			String workload, int nrOfRecords, int nrOfOps, String properties) {
		Random rnd = new Random();
		
		String loadStr = "run";
		
		if (loadPhase)
			loadStr = "load";
		
		if (!isValid(layer))
			throw new IllegalArgumentException("Invalid layer specified.");
		
		String command = "python ./bin/ycsb " +  loadStr + " " + layer + " -P workloads/" + workload 
				+ " -threads " + threads + " -p measurementtype=raw -p recordcount=" + nrOfRecords + " -p operationcount=" + nrOfOps + " " +  properties;
		String fileName;
		
		if (loadPhase)
			fileName = "results/"  + layer + "/" + layer + "-" + loadStr + "-" + workload + "-" + threads + "-records-" + nrOfRecords;
		else
			fileName = "results/"  + layer + "/" + layer + "-" + loadStr + "-" + workload + "-" + threads + "-ops-" + nrOfOps;
		
		if(!properties.equals("")) {
			fileName = fileName + properties.replaceAll("\\s","");;
		}
		
		String outputCmd = command + " > " + fileName + "-rnd-" + Math.abs(rnd.nextInt()) + ".txt";
		
		System.out.println(outputCmd);
		
		if(loadStr=="load")
			timeout();
		else if(loadStr=="run")
			timeout();
	}
	
	/**
	 * Checks if layer specified is valid.
	 * 
	 * @param layer
	 * @return
	 */
	private boolean isValid(String layer) {
		return layer == "kundera" || layer == "eclipselink" || layer == "playorm" 
				|| layer == "mongodb" || layer == "gora" || layer == "hibernate";
	}

	/**
	 * Clears the database after execution.
	 * 
	 * @param layer
	 */
	private void dropDatabase(String layer) {
		if (!isValid(layer))
			throw new IllegalArgumentException("Invalid layer specified to clear.");
		
		String collection = null;
		
		if (layer == "kundera")
			collection = "person";
		else if (layer == "hibernate")
			collection = "Person";
		else if (layer == "gora")
			collection = "person";
		else if (layer == "eclipselink")
			collection = "PERSON";
		else if (layer == "playorm")
			collection = "..";
		else if (layer == "mongodb")
			collection = "usertable";
		
		// TODO
		// --eval "db.collection.remove();"
		// verschillende usertables oplijsten
		
		// + Enable sharding?
		// sh.shardCollection("events.alerts", { "_id": "hashed" } )
		
		String cmd = "mongo " + layer + " --eval \"db.dropDatabase()\" --host " + host;
		
		System.out.println(cmd);
		System.out.println(SLEEP_CMD + " " + TIMEOUT);
		
		// sh.enableSharding( 'db' ) first
		// sh.shardCollection("records.people", { zipcode: 1} )
//		cmd = "mongo " + layer + " --eval \"sh.enableSharding('" + layer + "')\" --host " + host;
//		System.out.println(cmd);
		
		cmd = "mongo " + layer + " --eval \"sh.shardCollection('" + layer + "." + collection + "', { '_id': 1})\" --host " + host;
		if(cluster)
			System.out.println(cmd);
		
	}
	
	/**
	 * Loads the database layer with an mount of records.
	 * 
	 * @param layer
	 * @param records
	 */
	private void loadDatabase(String layer, int records) {
		runBenchmark(layer, true, 1, "workloada", records, 10000);
	}
}
