mongo kundera --eval "db.person.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera -P workloads/workloada -threads 1 -p recordcount=10000000 -p operationcount=10000  > results/kundera/kundera-load-workloada-1-records-10000000-rnd-130922293.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=EMAIL > results/kundera/kundera-run-read-workload-1-ops-100-preadType=EMAIL-rnd-576588792.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=EMAIL > results/kundera/kundera-run-read-workload-1-ops-100-preadType=EMAIL-rnd-1325556308.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=AND > results/kundera/kundera-run-read-workload-1-ops-100-preadType=AND-rnd-1020742308.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=AND > results/kundera/kundera-run-read-workload-1-ops-100-preadType=AND-rnd-1186101256.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=BETWEEN > results/kundera/kundera-run-read-workload-1-ops-100-preadType=BETWEEN-rnd-1017079504.txt
sleep 5
python ./bin/ycsb run kundera -P workloads/read-workload -threads 1 -p recordcount=10000000 -p operationcount=100 -p readType=BETWEEN > results/kundera/kundera-run-read-workload-1-ops-100-preadType=BETWEEN-rnd-1739392373.txt
sleep 5
