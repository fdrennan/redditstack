import airflow
from airflow.operators.bash_operator import BashOperator
from airflow.models import DAG

args = {
    'owner': 'Freddy Drennan',
    'start_date': airflow.utils.dates.days_ago(2),
    'email': ['drennanfreddy@gmail.com'],
    'retries': 2,
    'email_on_failure': True,
    'email_on_retry': True
}

dag = DAG(dag_id='refresh_materialized_views',
          default_args=args,
          schedule_interval='@hourly',
          concurrency=1,
          max_active_runs=1,
          catchup=False)


task_1 = BashOperator(
    task_id='submissions_count',
    bash_command='/usr/local/bin/python3 ../scripts/submissions_count.py',
    dag=dag
)

