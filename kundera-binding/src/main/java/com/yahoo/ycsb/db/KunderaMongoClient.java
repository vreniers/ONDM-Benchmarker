/**
 * Copyright 2012 Impetus Infotech.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.yahoo.ycsb.db;

import java.util.HashMap;

import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.Vector;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.impetus.kundera.client.Client;
import com.yahoo.ycsb.ByteIterator;
import com.yahoo.ycsb.DB;
import com.yahoo.ycsb.DBException;
import com.yahoo.ycsb.Status;

import com.yahoo.ycsb.db.MongoUser;

/**
 * @author Kuldeep Mishra
 * 
 */
public class KunderaMongoClient extends DB
{
    static Random random = new Random();

    private static final int Ok = 0;

    private static final int Error = -1;

    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("kundera-mongodb");

    private EntityManager em;

    private int j;
    
    private Client client;

    /**
     * Initialize any state for this DB. Called once per DB instance; there is
     * one DB instance per client thread.
     */
    public void init() throws DBException
    {
//        emf 
        em = emf.createEntityManager();
        Map<String, Client> clients = (Map<String, Client>) em.getDelegate();
        
        client = clients.get("kundera-mongodb");
        j = 1;

    }

    /**
     * Cleanup any state for this DB. Called once per DB instance; there is one
     * DB instance per client thread.
     */
    public void cleanup() throws DBException
    {
        em.clear();
        em.close();
        // emf.close();
    }

    /**
     * Read a record from the database. Each field/value pair from the result
     * will be stored in a HashMap.
     * 
     * @param table
     *            The name of the table
     * @param key
     *            The record key of the record to read.
     * @param fields
     *            The list of fields to read, or null for all of them
     * @param result
     *            A HashMap of field/value pairs for the result
     * @return Zero on success, a non-zero error code on error
     */
    public Status read(String table, String key, Set<String> fields, HashMap<String, ByteIterator> result)
    {
        try
        {
         //   em.clear();
            
            final Object o = em.find(MongoUser.class, key);
            
            assert o != null;
//            em.clear();
            em.clear();
            return Status.OK;
        }
        catch (Exception e)
        {
        	e.printStackTrace();
            return Status.ERROR;
        }
    }

    /**
     * Perform a range scan for a set of records in the database. Each
     * field/value pair from the result will be stored in a HashMap.
     * 
     * @param table
     *            The name of the table
     * @param startkey
     *            The record key of the first record to read.
     * @param recordcount
     *            The number of records to read
     * @param fields
     *            The list of fields to read, or null for all of them
     * @param result
     *            A Vector of HashMaps, where each HashMap is a set field/value
     *            pairs for one record
     * @return Zero on success, a non-zero error code on error
     */
    public Status scan(String table, String startkey, int recordcount, Set<String> fields,
            Vector<HashMap<String, ByteIterator>> result)
    {
        return Status.OK;
    }

    /**
     * Update a record in the database. Any field/value pairs in the specified
     * values HashMap will be written into the record with the specified record
     * key, overwriting any existing values with the same field name.
     * 
     * @param table
     *            The name of the table
     * @param key
     *            The record key of the record to write.
     * @param values
     *            A HashMap of field/value pairs to update in the record
     * @return Zero on success, a non-zero error code on error
     */
    public Status update(String table, String key, HashMap<String, ByteIterator> values)
    {
        return insert(table, key, values);
    }

    /**
     * Insert a record in the database. Any field/value pairs in the specified
     * values HashMap will be written into the record with the specified record
     * key.
     * 
     * @param table
     *            The name of the table
     * @param key
     *            The record key of the record to insert.
     * @param values
     *            A HashMap of field/value pairs to insert in the record
     * @return Zero on success, a non-zero error code on error
     */
    public Status insert(String table, String key, HashMap<String, ByteIterator> values)
    {
        try
        {
            final MongoUser u = new MongoUser(key, getString(key, "24"), getString(key, "gzb"),
                    getString(key, "mishra"));
            em.persist(u);

            em.clear();
            return Status.OK;
        }
        catch (Exception e)
        {
        	e.printStackTrace();
            return Status.ERROR;
        }
    }

    /**
     * Delete a record from the database.
     * 
     * @param table
     *            The name of the table
     * @param key
     *            The record key of the record to delete.
     * @return Zero on success, a non-zero error code on error
     */
    public Status delete(String table, String key)
    {
        try
        {
            em.remove(em.find(MongoUser.class, key));
            return Status.OK;
        }
        catch (Exception e)
        {
        	e.printStackTrace();
            return Status.ERROR;
        }
    }

    private String getString(String key, String value)
    {
        StringBuilder builder = new StringBuilder(key);
        builder.append(value);
        return builder.toString();
    }


    public static void main(String[] args) throws DBException
    {
        KunderaMongoClient client = new KunderaMongoClient();
        client.init();
        client.insert("user", "1", null);
        client.read("user", "1", null, null);
    }
}