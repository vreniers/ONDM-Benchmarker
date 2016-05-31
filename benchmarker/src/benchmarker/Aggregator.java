package benchmarker;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Scanner;
import java.util.Stack;

/**
 * Combines the results from the output files.
 * 
 * @author Vincent
 */
public class Aggregator {

	public static void main(String[] args) {
		new Aggregator();
	}

	private final ArrayList<String> databaseLayers = new ArrayList<String>();;
	
	private final ArrayList<String> workloads = new ArrayList<String>();;
	
	private final ArrayList<String> queryCmds = new ArrayList<String>();
	
	private final HashMap<String, ArrayList<String>> csvFiles = new HashMap<String, ArrayList<String>>();
	
	public Aggregator() {
		databaseLayers.add("hibernate");
//		databaseLayers.add("playorm");
		databaseLayers.add("eclipselink");
		databaseLayers.add("mongodb");
		databaseLayers.add("kundera");
//		databaseLayers.add("gora");
		
		workloads.add("load-workload");
		workloads.add("run-read-modify-workload");
		workloads.add("run-read-update-workload");
		workloads.add("run-read-workload");
		workloads.add("run-update-workload");
		
		queryCmds.add("0");
		queryCmds.add("SELECT-PRIMARY");
		queryCmds.add("EMAIL");
		queryCmds.add("AND");
		queryCmds.add("BETWEEN");
		queryCmds.add("OR");
		
		for(String layer: databaseLayers) {
			File folder = new File("results/" + layer);
			
			processFilesForLayer(folder, layer);
		}
		
		System.out.println(csvFiles.keySet());
//		System.out.println(csvFiles.get("playorm-load-workload"));
		
		writeOut();
	}
	
	/**
	 * Write the results out to appropriate csv files
	 * for each layer + workload.
	 */
	private void writeOut() {
		for(String csvFile: csvFiles.keySet()) {
			
			try {
				PrintWriter writer = new PrintWriter("csv/" + csvFile + ".txt", "UTF-8");
				
				ArrayList<String> results = csvFiles.get(csvFile);
				Collections.sort(results);
				
				for(String result: results) {
					writer.println(result);
				}
				
				writer.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
	}



	/**
	 * Read all results files and create a csv record.
	 * 
	 * This csv record is then added to the appropriate collection.
	 * 
	 * @param folder
	 * @param layer
	 */
	public void processFilesForLayer(final File folder, String layer) {
		
		HashMap<String, String> results = new HashMap<String, String>();
		
		File[] listOfFiles = folder.listFiles();

		for (int i = 0; i < listOfFiles.length; i++) {
			if (listOfFiles[i].isFile()) {
//				System.out.println(listOfFiles[i]);
				String csv = parseFile(listOfFiles[i]);
				
				if(csv!=null)
					addResult(listOfFiles[i].getName(), csv, layer);
				else
					System.out.println("False: " + listOfFiles[i]);
			} else if (listOfFiles[i].isDirectory()) {
				processFilesForLayer(listOfFiles[i], layer);
			}
		}	    
	}

	/**
	 * Adds a csv record to the appropriate collection. (Layer + Workload)
	 * 
	 * Unless it's a readType for a query selector.
	 * We add it to separate read workload file.
	 * @param name
	 * @param csv
	 * @param layer
	 */
	private void addResult(String name, String csv, String layer) {
		for(String workload: workloads) {
			for(String queryCmd: queryCmds) {
				if (workload.equals("run-read-workload") && name.contains("run-read-workload") 
						&& name.contains("readType=" + queryCmd)) {
					if(!csvFiles.containsKey(layer + "-" + workload + "-" +  queryCmd)) {
						csvFiles.put(layer + "-" + workload + "-" +  queryCmd, new ArrayList<String>());
					}
					
					csvFiles.get(layer + "-" + workload + "-" +  queryCmd).add(csv);
				}
			}
			if (name.contains(workload) && !workload.equals("run-read-workload")) {
				if(!csvFiles.containsKey(layer + "-" + workload)) {
					csvFiles.put(layer + "-" + workload, new ArrayList<String>());
				}
				
				csvFiles.get(layer + "-" + workload).add(csv);
			}
		}
	}

	private String parseFile(File file)  {
		double totalTime = 0.0;
		long noOfOperations = 0;
		
//		System.out.println(file);
		
		try {
			Scanner input = new Scanner(file);
			input.useDelimiter("\n");
		
			BigDecimal avgLatency = null;
			BigDecimal throughput = null;
			BigDecimal minLatency = null;
			BigDecimal maxLatency = null;
			BigDecimal int99th = null;
			BigDecimal int95th = null;
			
			String line;
			
			while (input.hasNext()) {
				line = input.next();
//				System.out.println(line);
				
				if(line.contains("CLEANUP")) {
//					System.out.println("cleanup");
					continue;
				}
				
				if (line.contains("RunTime")) {
					totalTime = Double.parseDouble(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
				}
				
				if (line.contains("Operations") && noOfOperations == 0) {
					noOfOperations = Long.parseLong(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					
					if (noOfOperations <= 1) {
						return null;
					}
				}
				
				if (line.contains("Throughput")) {
					throughput = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
				}
				
				if (line.contains("AverageLatency")) {
					if (avgLatency == null) {
						avgLatency = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					}
				}
				
				 if(line.contains("MinLatency")) { 
					 if (minLatency == null) {
						 minLatency = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					}
				 } 
				 
				 if(line.contains("MaxLatency")) {
					 if (maxLatency == null) {
						 maxLatency = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					}
				 }
				 
				 if(line.contains("95thPercentileLatency")) {
					 if (int95th == null) {
						 int95th = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					}
				 }
				 
				 if(line.contains("Return=-1")) {
					 return null;
				 }
				 
				 if(line.contains("99thPercentileLatency")) {
					 if (int99th == null) {
						 int99th = new BigDecimal(line.substring(line.lastIndexOf(", ") + 2).replaceAll("\\s",""));
					}
				 }
				 
				// if(!(line.contains("CLEANUP") || line.contains("UPDATE") ||
				// line.contains("INSERT") )){
				// logger.info(line);
				// }
			}
			
			return noOfOperations + "," + totalTime + "," + throughput + "," + avgLatency + "," + minLatency + "," + maxLatency + "," + int95th + "," + int99th;
			
		} catch (FileNotFoundException e) {
			System.out.println(file);
			e.printStackTrace();
		}
		
		return null;
	}
}