python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-40000000-rnd-893166188.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-1894729398.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-2053441818.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-2112574165.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-1004006045.txt
sleep 120
../MongoDB/bin/mongo mongodb --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
