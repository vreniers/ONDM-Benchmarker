python ./bin/ycsb load datanucleus-cru -P workloads/workloada -threads 1 -p measurementtype=timeseries -p recordcount=4000000 -p operationcount=10000  > results/datanucleus-cru/datanucleus-load-workloada-1-records-4000000-rnd-1381483316.txt
sleep 120
python ./bin/ycsb run datanucleus-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=4000000 -p operationcount=1000000  > results/datanucleus-cru/datanucleus-run-read-workload-1-ops-1000000-rnd-1990470837.txt
sleep 120
python ./bin/ycsb run datanucleus-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=4000000 -p operationcount=1000000  > results/datanucleus-cru/datanucleus-run-update-workload-1-ops-1000000-rnd-459898464.txt
sleep 120
