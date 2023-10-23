Services Dashboard
This repository contains a docker-compose setup for running multiple services, including Airflow, Jupyter Notebook with PySpark, Spark, PostgreSQL, and an Nginx web server to provide a dashboard for accessing these services.

Services:
Airflow: Workflow management platform.
Jupyter Notebook with PySpark: Interactive notebook for data analysis using PySpark.
Spark: Cluster-computing framework with a master and three worker nodes.
PostgreSQL: Relational database.
Nginx: Web server hosting a dashboard for accessing Airflow and Jupyter Notebook.
Prerequisites:
Docker
Docker Compose
Setup:
Clone this repository:
bash
Copy code
git clone [repository-url]
cd [repository-directory]
Update the PostgreSQL credentials in the docker-compose.yml file:
Replace the placeholders (your_postgres_user, your_strong_password, and your_database_name) with your desired PostgreSQL credentials and database name.

Start the services:
bash
Copy code
docker-compose up -d
Access the dashboard:
Open a web browser and navigate to http://localhost. You'll see buttons for accessing Airflow and Jupyter Notebook.

Accessing Services:
Dashboard: http://localhost
Airflow: http://localhost:8080
Jupyter Notebook: http://localhost:8888
Spark Master UI: http://localhost:8081
Stopping Services:
To stop all services:

bash
Copy code
docker-compose down
Notes:
Ensure you have the necessary configuration files (pg_hba.conf, postgresql.conf, jupyter_notebook_config.py, nginx.conf) in the same directory as the docker-compose.yml.
The www directory contains the HTML file for the Nginx dashboard.
You can save the above content in a README.md file in the root directory of your project. Adjust the [repository-url] and [repository-directory] placeholders with the appropriate values if you're hosting this on a platform like GitHub.



Project Structure:
saas-dbt-airflow/
│
├── docker-compose.yml               # The main Docker Compose file
│
├── nginx.conf                       # Nginx configuration file
│
├── jupyter_notebook_config.py       # Jupyter Notebook configuration file
│
├── pg_hba.conf                      # PostgreSQL client authentication configuration file (if needed)
│
├── postgresql.conf                  # PostgreSQL main configuration file (if needed)
│
├── www/                             # Directory containing static files for Nginx
│   ├── index.html                   # Sample static file (you can add more files or subdirectories here)
│
└── bashs/                           # Directory containing shell scripts
    ├── stop_and_remove_all.sh       # Script to stop and remove all containers
    ├── stop_specific_container.sh   # Script to stop a specific container
    └── restart_specific_container.sh # Script to restart a specific container
