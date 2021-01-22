#!/bin/bash

# kubectl


kubectl --namespace="biznes-elektroniczny" cp ~/studenci/7/db_7.sql biznes-db-7d46b58f4d-rm2v9:/tmp/db_7.sql
kubectl --namespace="biznes-elektroniczny" cp ~/studenci/7/db_7_import.sh biznes-db-7d46b58f4d-rm2v9:/tmp/db_7_import.sh
kubectl --namespace="biznes-elektroniczny" exec --stdin --tty biznes-db-7d46b58f4d-rm2v9 -- chmod +x /tmp/db_7_import.sh
kubectl --namespace="biznes-elektroniczny" exec --stdin --tty biznes-db-7d46b58f4d-rm2v9 -- /tmp/db_7_import.sh
kubectl --namespace="biznes-elektroniczny" exec --stdin --tty biznes-db-7d46b58f4d-rm2v9 -- rm /tmp/db_7.sql
kubectl --namespace="biznes-elektroniczny" exec --stdin --tty biznes-db-7d46b58f4d-rm2v9 -- rm /tmp/db_7_import.sh


# localhost

# docker cp db_7.sql mariadb:/tmp/db_7.sql
# docker cp db_7_import.sh mariadb:/tmp/db_7_import.sh
# docker exec -it mariadb chmod +x /tmp/db_7_import.sh
# docker exec -it mariadb /tmp/db_7_import.sh
# docker exec -it mariadb rm /tmp/db_7.sql
# docker exec -it mariadb rm /tmp/db_7_import.sh