mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-1000000-rnd-1895097629.txt
sleep 5
mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=153125 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-153125-rnd-2030244798.txt
sleep 5
mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=267968 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-267968-rnd-676143031.txt
sleep 5
mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=468944 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-468944-rnd-290670745.txt
sleep 5
mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=820652 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-820652-rnd-1546840710.txt
sleep 5
mongo mongodb --eval "db.usertable.remove({})" --host localhost
sleep 5
python ./bin/ycsb load mongodb-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/mongodb-cru/mongodb-load-workloada-1-records-1000000-rnd-767719844.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-workload-1-ops-153125-rnd-1571141855.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-workload-1-ops-267968-rnd-1596566078.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-workload-1-ops-468944-rnd-760139809.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-workload-1-ops-820652-rnd-1070313011.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-workload-1-ops-1000000-rnd-2118627669.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-update-workload-1-ops-153125-rnd-1745040882.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-update-workload-1-ops-267968-rnd-1792423104.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-update-workload-1-ops-468944-rnd-1013336138.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-update-workload-1-ops-820652-rnd-2009720386.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-update-workload-1-ops-1000000-rnd-215010137.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-153125-rnd-1080577740.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-267968-rnd-2057147530.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-468944-rnd-1371087004.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-820652-rnd-1435461283.txt
sleep 5
python ./bin/ycsb run mongodb-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/mongodb-cru/mongodb-run-read-update-workload-1-ops-1000000-rnd-3667055.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-1000000-rnd-1454482649.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=153125 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-153125-rnd-1072518040.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=267968 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-267968-rnd-1088519631.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=468944 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-468944-rnd-1629825104.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=820652 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-820652-rnd-1932517032.txt
sleep 5
mongo hibernate --eval "db.User.remove({})" --host localhost
sleep 5
python ./bin/ycsb load hibernate-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/hibernate-cru/hibernate-load-workloada-1-records-1000000-rnd-729821469.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-workload-1-ops-153125-rnd-236534342.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-workload-1-ops-267968-rnd-264967340.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-workload-1-ops-468944-rnd-1204347693.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-workload-1-ops-820652-rnd-453579544.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-workload-1-ops-1000000-rnd-496551209.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-update-workload-1-ops-153125-rnd-1446527503.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-update-workload-1-ops-267968-rnd-542574890.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-update-workload-1-ops-468944-rnd-446970928.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-update-workload-1-ops-820652-rnd-584208417.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-update-workload-1-ops-1000000-rnd-1649677084.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-153125-rnd-1216540347.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-267968-rnd-2119626238.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-468944-rnd-1128906210.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-820652-rnd-943669846.txt
sleep 5
python ./bin/ycsb run hibernate-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/hibernate-cru/hibernate-run-read-update-workload-1-ops-1000000-rnd-2125694862.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-1000000-rnd-757031133.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=153125 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-153125-rnd-28078758.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=267968 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-267968-rnd-1270060314.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=468944 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-468944-rnd-1889689721.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=820652 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-820652-rnd-1178346806.txt
sleep 5
mongo eclipselink --eval "db.USER.remove({})" --host localhost
sleep 5
python ./bin/ycsb load eclipselink-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/eclipselink-cru/eclipselink-load-workloada-1-records-1000000-rnd-673098230.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-153125-rnd-1668801822.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-267968-rnd-2027104207.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-468944-rnd-797909696.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-820652-rnd-471483429.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-workload-1-ops-1000000-rnd-908603197.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-153125-rnd-1268869084.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-267968-rnd-1888628254.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-468944-rnd-1945672520.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-820652-rnd-79419619.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-update-workload-1-ops-1000000-rnd-119138178.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-153125-rnd-556419484.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-267968-rnd-1213056976.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-468944-rnd-1815196456.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-820652-rnd-1921275645.txt
sleep 5
python ./bin/ycsb run eclipselink-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/eclipselink-cru/eclipselink-run-read-update-workload-1-ops-1000000-rnd-78881736.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-1000000-rnd-807494891.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=153125 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-153125-rnd-720529342.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=267968 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-267968-rnd-997791344.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=468944 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-468944-rnd-1034985045.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=820652 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-820652-rnd-77990515.txt
sleep 5
mongo gora --eval "db.users.remove({})" --host localhost
sleep 5
python ./bin/ycsb load gora-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/gora-cru/gora-load-workloada-1-records-1000000-rnd-923966689.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/gora-cru/gora-run-read-workload-1-ops-153125-rnd-584670800.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/gora-cru/gora-run-read-workload-1-ops-267968-rnd-2020773695.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/gora-cru/gora-run-read-workload-1-ops-468944-rnd-227840461.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/gora-cru/gora-run-read-workload-1-ops-820652-rnd-1887985940.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-workload-1-ops-1000000-rnd-198273157.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/gora-cru/gora-run-update-workload-1-ops-153125-rnd-909580717.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/gora-cru/gora-run-update-workload-1-ops-267968-rnd-701195763.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/gora-cru/gora-run-update-workload-1-ops-468944-rnd-1588024907.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/gora-cru/gora-run-update-workload-1-ops-820652-rnd-1439798946.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/gora-cru/gora-run-update-workload-1-ops-1000000-rnd-2139347050.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/gora-cru/gora-run-read-update-workload-1-ops-153125-rnd-1423495296.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/gora-cru/gora-run-read-update-workload-1-ops-267968-rnd-700569789.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/gora-cru/gora-run-read-update-workload-1-ops-468944-rnd-1880323864.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/gora-cru/gora-run-read-update-workload-1-ops-820652-rnd-64957591.txt
sleep 5
python ./bin/ycsb run gora-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/gora-cru/gora-run-read-update-workload-1-ops-1000000-rnd-1193635282.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-1000000-rnd-333813260.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=153125 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-153125-rnd-745296105.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=267968 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-267968-rnd-142901654.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=468944 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-468944-rnd-937110652.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=820652 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-820652-rnd-387489407.txt
sleep 5
mongo kundera --eval "db.user.remove({})" --host localhost
sleep 5
python ./bin/ycsb load kundera-cru -P workloads/workloada -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=10000  > results/kundera-cru/kundera-load-workloada-1-records-1000000-rnd-683431966.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-workload-1-ops-153125-rnd-603246410.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-workload-1-ops-267968-rnd-317205662.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-workload-1-ops-468944-rnd-1059471851.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-workload-1-ops-820652-rnd-139246372.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-workload-1-ops-1000000-rnd-1537073509.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/kundera-cru/kundera-run-update-workload-1-ops-153125-rnd-415463456.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/kundera-cru/kundera-run-update-workload-1-ops-267968-rnd-1323632001.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/kundera-cru/kundera-run-update-workload-1-ops-468944-rnd-1183717517.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/kundera-cru/kundera-run-update-workload-1-ops-820652-rnd-1212746133.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-update-workload-1-ops-1000000-rnd-990507039.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=153125  > results/kundera-cru/kundera-run-read-update-workload-1-ops-153125-rnd-1666263880.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=267968  > results/kundera-cru/kundera-run-read-update-workload-1-ops-267968-rnd-435150197.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=468944  > results/kundera-cru/kundera-run-read-update-workload-1-ops-468944-rnd-1119397677.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=820652  > results/kundera-cru/kundera-run-read-update-workload-1-ops-820652-rnd-1051063830.txt
sleep 5
python ./bin/ycsb run kundera-cru -P workloads/read-update-workload -threads 1 -p measurementtype=raw -p recordcount=1000000 -p operationcount=1000000  > results/kundera-cru/kundera-run-read-update-workload-1-ops-1000000-rnd-1309955493.txt
sleep 5
