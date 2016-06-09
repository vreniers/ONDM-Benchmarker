python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=20000000 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-20000000-rnd-1643816967.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-901675520.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-update-workload-1-ops-1000000-rnd-378773235.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-822937172.txt
sleep 120
../MongoDB/bin/mongo mongodb --eval "db.dropDatabase()" --host mechelen.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=20000000 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-20000000-rnd-590431898.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-1844917733.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-update-workload-1-ops-1000000-rnd-1130717499.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-1000000-rnd-1820968221.txt
sleep 120
../MongoDB/bin/mongo hibernate --eval "db.dropDatabase()" --host mechelen.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=20000000 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-20000000-rnd-1521363167.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-1462703941.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-1000000-rnd-1601488175.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-1000000-rnd-708245858.txt
sleep 120
../MongoDB/bin/mongo eclipselink --eval "db.dropDatabase()" --host mechelen.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=20000000 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-20000000-rnd-841785169.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-111488983.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/gora-cru/gora-run-update-workload-1-ops-1000000-rnd-1968089099.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-update-workload-1-ops-1000000-rnd-175086118.txt
sleep 120
../MongoDB/bin/mongo gora --eval "db.dropDatabase()" --host mechelen.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=20000000 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-20000000-rnd-617562338.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-1932386011.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-update-workload-1-ops-1000000-rnd-906529768.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=20000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-update-workload-1-ops-1000000-rnd-2041763549.txt
sleep 120
../MongoDB/bin/mongo kundera --eval "db.dropDatabase()" --host mechelen.labo1.cs.kuleuven.be
sleep 1500
