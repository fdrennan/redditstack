echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

mkdir -m 777 dags plugins logs
# redditstack
