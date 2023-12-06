from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python import PythonOperator

# Define the function to be executed by the PythonOperator
def print_hello():
    return 'Hello, Airflow!'

# Default arguments for the DAG
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2023, 12, 1),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# Instantiate the DAG
dag = DAG('simple_python_operator_dag',
          default_args=default_args,
          description='A simple Python operator DAG',
          schedule_interval=timedelta(days=1))

# Define the PythonOperator
python_operator_task = PythonOperator(
    task_id='print_hello_task',
    python_callable=print_hello,
    dag=dag,
)

# Define the task dependencies
