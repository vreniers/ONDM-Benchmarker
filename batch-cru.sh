python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-40000000-rnd-1929929850.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-workload-1-ops-153125-rnd-117566319.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-workload-1-ops-267968-rnd-1363055604.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-workload-1-ops-468944-rnd-1221923998.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-workload-1-ops-820652-rnd-17815846.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-1897860261.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-workload-1-ops-153125-rnd-548345192.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-workload-1-ops-267968-rnd-1187639280.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-workload-1-ops-468944-rnd-1821249441.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-workload-1-ops-820652-rnd-764439364.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-941645349.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-workload-1-ops-153125-rnd-90647099.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-workload-1-ops-267968-rnd-767358466.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-workload-1-ops-468944-rnd-470452213.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-workload-1-ops-820652-rnd-516733127.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-218520589.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-workload-1-ops-153125-rnd-363299407.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-workload-1-ops-267968-rnd-1311507069.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-workload-1-ops-468944-rnd-456212276.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-workload-1-ops-820652-rnd-300618935.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-1732296836.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-update-workload-1-ops-153125-rnd-1291142362.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-update-workload-1-ops-267968-rnd-1291589867.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-update-workload-1-ops-468944-rnd-1642584762.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-update-workload-1-ops-820652-rnd-126762543.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-update-workload-1-ops-1000000-rnd-1348917742.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-update-workload-1-ops-153125-rnd-138293511.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-update-workload-1-ops-267968-rnd-1024295046.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-update-workload-1-ops-468944-rnd-2006605063.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-update-workload-1-ops-820652-rnd-1525207524.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-update-workload-1-ops-1000000-rnd-1480457541.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-update-workload-1-ops-153125-rnd-916081139.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-update-workload-1-ops-267968-rnd-701540756.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-update-workload-1-ops-468944-rnd-1444066211.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-update-workload-1-ops-820652-rnd-1886190004.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-update-workload-1-ops-1000000-rnd-1990988432.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-153125-rnd-234114311.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-267968-rnd-119887014.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-468944-rnd-1980660897.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-820652-rnd-1627176360.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-1528314032.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-153125-rnd-1285882466.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-267968-rnd-162466999.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-468944-rnd-1182396459.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-820652-rnd-1304199850.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-516197791.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-153125-rnd-432162538.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-267968-rnd-1263495578.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-468944-rnd-58969048.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-820652-rnd-546562653.txt
sleep 120
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-521654256.txt
sleep 120
../MongoDB/bin/mongo mongodb --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-40000000-rnd-306516032.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-workload-1-ops-153125-rnd-113732367.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-workload-1-ops-267968-rnd-311560229.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-workload-1-ops-468944-rnd-977395882.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-workload-1-ops-820652-rnd-7895839.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-843381833.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-workload-1-ops-153125-rnd-27852428.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-workload-1-ops-267968-rnd-1490297034.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-workload-1-ops-468944-rnd-1868917832.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-workload-1-ops-820652-rnd-1442439247.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-757416324.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-workload-1-ops-153125-rnd-1042119829.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-workload-1-ops-267968-rnd-1897874799.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-workload-1-ops-468944-rnd-1604050675.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-workload-1-ops-820652-rnd-2129165557.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-773465605.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-workload-1-ops-153125-rnd-1544617607.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-workload-1-ops-267968-rnd-1754825476.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-workload-1-ops-468944-rnd-1504886873.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-workload-1-ops-820652-rnd-675014057.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-1141153861.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-update-workload-1-ops-153125-rnd-1035756836.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-update-workload-1-ops-267968-rnd-166892946.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-update-workload-1-ops-468944-rnd-1428621355.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-update-workload-1-ops-820652-rnd-1215488181.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-update-workload-1-ops-1000000-rnd-1539654131.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-update-workload-1-ops-153125-rnd-1186691483.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-update-workload-1-ops-267968-rnd-1240028421.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-update-workload-1-ops-468944-rnd-1515383960.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-update-workload-1-ops-820652-rnd-20990433.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-update-workload-1-ops-1000000-rnd-371149820.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-update-workload-1-ops-153125-rnd-6701551.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-update-workload-1-ops-267968-rnd-172537400.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-update-workload-1-ops-468944-rnd-2099428206.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-update-workload-1-ops-820652-rnd-487133444.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-update-workload-1-ops-1000000-rnd-832218056.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-153125-rnd-1931949364.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-267968-rnd-2143289768.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-468944-rnd-447637862.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-820652-rnd-1289242501.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-1000000-rnd-785021186.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-153125-rnd-1729837712.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-267968-rnd-980416456.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-468944-rnd-1708312796.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-820652-rnd-438780853.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-1000000-rnd-1139863406.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-153125-rnd-697958139.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-267968-rnd-1520966846.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-468944-rnd-231122109.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-820652-rnd-884858183.txt
sleep 120
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-1000000-rnd-1848708800.txt
sleep 120
../MongoDB/bin/mongo hibernate --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-40000000-rnd-58380097.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-153125-rnd-1081150805.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-267968-rnd-363723158.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-468944-rnd-1017501232.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-820652-rnd-1008736088.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-411602967.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-153125-rnd-2045548230.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-267968-rnd-1167967328.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-468944-rnd-1037364862.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-820652-rnd-948629888.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-212829405.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-153125-rnd-1882428985.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-267968-rnd-1246327757.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-468944-rnd-592227728.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-820652-rnd-655878686.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-574545041.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-153125-rnd-142078318.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-267968-rnd-179004489.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-468944-rnd-1393049565.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-820652-rnd-377808227.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-2005388629.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-153125-rnd-1466775191.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-267968-rnd-896714691.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-468944-rnd-409469967.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-820652-rnd-1634907292.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-1000000-rnd-753536214.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-153125-rnd-1874846717.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-267968-rnd-1336567655.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-468944-rnd-304452795.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-820652-rnd-1915436145.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-1000000-rnd-241790017.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-153125-rnd-976503899.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-267968-rnd-156746861.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-468944-rnd-719999667.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-820652-rnd-130832.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-1000000-rnd-198931048.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-153125-rnd-755297067.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-267968-rnd-2006221045.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-468944-rnd-500321078.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-820652-rnd-1711227.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-1000000-rnd-448938337.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-153125-rnd-987639292.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-267968-rnd-596300000.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-468944-rnd-1985896312.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-820652-rnd-598069652.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-1000000-rnd-1561893122.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-153125-rnd-1311701320.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-267968-rnd-26364560.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-468944-rnd-553196517.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-820652-rnd-1704827527.txt
sleep 120
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-1000000-rnd-1631911554.txt
sleep 120
../MongoDB/bin/mongo eclipselink --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-40000000-rnd-1044073724.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-workload-1-ops-153125-rnd-296368182.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-workload-1-ops-267968-rnd-1355056848.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-workload-1-ops-468944-rnd-1350396640.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-workload-1-ops-820652-rnd-1274382055.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-1679629856.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-workload-1-ops-153125-rnd-1715043081.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-workload-1-ops-267968-rnd-1955300445.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-workload-1-ops-468944-rnd-367004205.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-workload-1-ops-820652-rnd-767963538.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-858031314.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-workload-1-ops-153125-rnd-208604191.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-workload-1-ops-267968-rnd-849214857.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-workload-1-ops-468944-rnd-1817306201.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-workload-1-ops-820652-rnd-1273113185.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-1181306060.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-workload-1-ops-153125-rnd-1158479146.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-workload-1-ops-267968-rnd-389170220.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-workload-1-ops-468944-rnd-255074144.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-workload-1-ops-820652-rnd-484236854.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-1156097699.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-update-workload-1-ops-153125-rnd-302920579.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-update-workload-1-ops-267968-rnd-1358970222.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-update-workload-1-ops-468944-rnd-1429472243.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-update-workload-1-ops-820652-rnd-718587252.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-update-workload-1-ops-1000000-rnd-559472735.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-update-workload-1-ops-153125-rnd-212715213.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-update-workload-1-ops-267968-rnd-604066593.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-update-workload-1-ops-468944-rnd-1346274540.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-update-workload-1-ops-820652-rnd-908635146.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-update-workload-1-ops-1000000-rnd-1216317531.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-update-workload-1-ops-153125-rnd-1968450031.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-update-workload-1-ops-267968-rnd-1849411592.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-update-workload-1-ops-468944-rnd-659406956.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-update-workload-1-ops-820652-rnd-611991785.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-update-workload-1-ops-1000000-rnd-148304744.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-update-workload-1-ops-153125-rnd-1701602791.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-update-workload-1-ops-267968-rnd-1183154412.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-update-workload-1-ops-468944-rnd-1741725981.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-update-workload-1-ops-820652-rnd-499777613.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-update-workload-1-ops-1000000-rnd-445697639.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-update-workload-1-ops-153125-rnd-1899802049.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-update-workload-1-ops-267968-rnd-818635891.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-update-workload-1-ops-468944-rnd-896829849.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-update-workload-1-ops-820652-rnd-1779835271.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-update-workload-1-ops-1000000-rnd-331751103.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/gora-cru/gora-run-read-update-workload-1-ops-153125-rnd-1060598876.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/gora-cru/gora-run-read-update-workload-1-ops-267968-rnd-1888534023.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/gora-cru/gora-run-read-update-workload-1-ops-468944-rnd-1946178028.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/gora-cru/gora-run-read-update-workload-1-ops-820652-rnd-1753606164.txt
sleep 120
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-update-workload-1-ops-1000000-rnd-1931188075.txt
sleep 120
../MongoDB/bin/mongo gora --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-40000000-rnd-1573580686.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-workload-1-ops-153125-rnd-1360299620.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-workload-1-ops-267968-rnd-1857596589.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-workload-1-ops-468944-rnd-2121225995.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-workload-1-ops-820652-rnd-1206440550.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-408840000.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-workload-1-ops-153125-rnd-924027748.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-workload-1-ops-267968-rnd-1561280013.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-workload-1-ops-468944-rnd-889757582.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-workload-1-ops-820652-rnd-1929795874.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-843440562.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-workload-1-ops-153125-rnd-785461364.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-workload-1-ops-267968-rnd-1219036915.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-workload-1-ops-468944-rnd-1973873479.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-workload-1-ops-820652-rnd-633378513.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-1309005005.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-workload-1-ops-153125-rnd-2127301048.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-workload-1-ops-267968-rnd-1743488613.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-workload-1-ops-468944-rnd-93489426.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-workload-1-ops-820652-rnd-1653823744.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-901152014.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-update-workload-1-ops-153125-rnd-810974516.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-update-workload-1-ops-267968-rnd-85502414.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-update-workload-1-ops-468944-rnd-154873372.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-update-workload-1-ops-820652-rnd-2013352863.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-update-workload-1-ops-1000000-rnd-349175993.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-update-workload-1-ops-153125-rnd-872223693.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-update-workload-1-ops-267968-rnd-241956521.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-update-workload-1-ops-468944-rnd-1750804486.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-update-workload-1-ops-820652-rnd-66690462.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-update-workload-1-ops-1000000-rnd-1247025489.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-update-workload-1-ops-153125-rnd-587541182.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-update-workload-1-ops-267968-rnd-1482020618.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-update-workload-1-ops-468944-rnd-2061046870.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-update-workload-1-ops-820652-rnd-891523833.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-update-workload-1-ops-1000000-rnd-1080763228.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-update-workload-1-ops-153125-rnd-505750186.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-update-workload-1-ops-267968-rnd-1628440902.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-update-workload-1-ops-468944-rnd-958041169.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-update-workload-1-ops-820652-rnd-1809646697.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-update-workload-1-ops-1000000-rnd-1385729657.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-update-workload-1-ops-153125-rnd-493405218.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-update-workload-1-ops-267968-rnd-176269306.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-update-workload-1-ops-468944-rnd-264343234.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-update-workload-1-ops-820652-rnd-1581640526.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-update-workload-1-ops-1000000-rnd-872093055.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-update-workload-1-ops-153125-rnd-303003188.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-update-workload-1-ops-267968-rnd-694520003.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-update-workload-1-ops-468944-rnd-715369781.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-update-workload-1-ops-820652-rnd-827149173.txt
sleep 120
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=40000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-update-workload-1-ops-1000000-rnd-1616724274.txt
sleep 120
../MongoDB/bin/mongo kundera --eval "db.dropDatabase()" --host riemst.labo1.cs.kuleuven.be
sleep 1500
