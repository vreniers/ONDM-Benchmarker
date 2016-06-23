python ./bin/ycsb load datanucleus -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/datanucleus/datanucleus-load-workloada-1-records-1000000-rnd-1037317953.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=EMAIL > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=EMAIL-rnd-632809849.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=EMAIL > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=EMAIL-rnd-1052453262.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=AND > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=AND-rnd-1166088608.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=AND > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=AND-rnd-1363109937.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=BETWEEN > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=BETWEEN-rnd-266080797.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=100000 -p readType=BETWEEN > results/datanucleus/datanucleus-run-read-workload-1-ops-100000-preadType=BETWEEN-rnd-437195498.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000 -p readType=0 > results/datanucleus/datanucleus-run-read-workload-1-ops-1000000-preadType=0-rnd-1666212949.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000 -p readType=SELECT-PRIMARY > results/datanucleus/datanucleus-run-read-workload-1-ops-1000000-preadType=SELECT-PRIMARY-rnd-1918232105.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000 -p readType=OR > results/datanucleus/datanucleus-run-read-workload-1-ops-10000-preadType=OR-rnd-346251994.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000 -p readType=OR > results/datanucleus/datanucleus-run-read-workload-1-ops-10000-preadType=OR-rnd-516874956.txt
sleep 120
python ./bin/ycsb run datanucleus -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000 -p readType=OR > results/datanucleus/datanucleus-run-read-workload-1-ops-10000-preadType=OR-rnd-460859897.txt
sleep 120
