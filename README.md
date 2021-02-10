## This stack depends on this R package

### [redditsuite](https://github.com/fdrennan/redditsuite)

## Required Directory Structure

    .
    ├── .Renviron (Must generate)
    ├── .env (Must generate)
    ├── .gitignore
    ├── Dockerfile
    ├── Makefile
    ├── README.md
    ├── dags
    ├── docker-compose.yaml
    ├── logs
    ├── main.R
    ├── plugins
    ├── pre-install.sh
    ├── redditstack.Rproj
    └── sql
        ├── authors.sql
        ├── submission_insertion_times.sql
        ├── submission_meta.sql
        └── submissions.sql

    4 directories, 15 files

## Setup

1.  Install required binaries and get the code  
    `curl https://raw.githubusercontent.com/fdrennan/redditstack/main/pre-install.sh | sh`

2.  Exit shell and restart server to finish docker permissions update.

3.  Create the `.env` file in the directory   
    `./redditstack`.`echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" >> .env`

4.  Update `.Renviron` below and put in `./redditsuite/.Renviron`

    ```{bash}
    email=
    USERNAME=
    PASSWORD=
    REDDIT_CLIENT=
    REDDIT_AUTH=
    USER_AGENT="datagather by /u/(yourusername)"
    POSTGRES_PORT=5434
    POSTGRES_HOST=
    POSTGRES_USER=unicorn_user
    POSTGRES_PASSWORD=magical_password
    POSTGRES_DB=rainbow_database
    SUBREDDIT=all
    NROWS=100
    SLACK_API_KEY=
    ```

5.  `make init`
