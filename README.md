Yahoo! Cloud System Benchmark (YCSB) Extended
======================================================
Extended by Vincent Reniers with support for NoSQL abstraction layers:
- EclipseLink
- PlayORM
- Hibernate OGM
- Kundera
- Apache Gora
- DataNucleus

This YCSB also provides an updated version for the MongoDB interface.
Extra's added: A way to generate a batch file and aggregate YCSB result files

In addition to benchmark search queries I have made use of a datafactory library
by Andy Gibson. (source: https://github.com/andygibson/datafactory)

Extending YCSB with a new NoSQL abstraction layer
---------------

1. Copy an existing directory, remove unnecessary files inside the directory.
2. Update the POM.xml file in the subdirectory and in YCSB's main directory.
   You want to make it so the new ''binding'' is a child dependency of YCSB.

3. Implement the abstraction layer in the subdirectory. Add the abstraction layer's maven dependencies.

4. Test if the abstraction layer works properly, in for example EclipseLink by executing YCSB workloads. For more information on this see the YCSB documentation. What I've done to make this more easy is actually copied the YCSB Client java file to each of my implementations. In Eclipse, I make a runtime that calls the DB client and as a parameter my abstraction layer class is specified as the DB interface that has to be used. Different approaches are possible, but this was the most easy manner. In the eventual implementation these copied DB client files can be removed.
    
5. You will want to run the YCSB benchmark using the command line interface (CLI). In order to realize this YCSB comes with a bin/ycsb file. Edit the file and add in your abstraction layer, specify the name and the class file.

6. Run "mvn clean package" in the directory. This will compile all YCSB db interfaces (bindings) into target jars. The ycsb/bin file uses these jars to execute the benchmark in the console.

7. You're all done and ready to start benchmarking with the terminal

Benchmark automatization
---------------
Don't want to manually execute workload commands in the shell?
A Benchmarker java implementation has been provided in the benchmarker folder.
This class file is really custom tailored to my own benchmark goal but can be modified.

1. Add in an abstraction layer in the ArrayList e.g. add("DataNucleus") in Benchmarker.java
2. The benchmarker will now generate batch commands for this db interface.
3. In the start() function add the calls to which tests you want to execute. For example startReadTests(layer);
4. You have to look at each function to figure out how the test works and make sure function calls line up correctly (post- and pre-condition).
5. This benchmarker is intended to be executed on MongoDB. If you want to use it for Cassandra the calls to drop a database will have to be changed in dropDatabase(). 
6. The benchmarker works with initial records and operations and increases with a factor until an upper limit is reached.
7. Once everything is set up right. Generate the batch file and point the output to the batch.sh file in the YCSB directory
8. Chmod +x ./batch.sh
9. Run the batch.sh, I would advise to run it in background using nohup ./batch.sh > output.log &

The batch file automatically places result files in results/abstraction-layer/.
Make sure you add in a new folder for the new abstraction layer here.

Aggregating the results
---------------
After a while a lot of results will be generated.
Aggregating these in spreadsheets by copy-paste is too time consuming.
Use the benchmarker/Aggregator.java class

1. Copy the results directory into benchmarker/results
2. Run the Aggregator class, add in your abstraction-layer name here, and the workload names.
3. The results will now be generated into the benchmarker/csv directory.
4. A CSV file is created for each abstraction layer and workload.

The CSV's can then be used to analyze the results.
# YCSB-Extended-V2
