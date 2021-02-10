
## Setup

```
curl https://raw.githubusercontent.com/fdrennan/redditstack/main/pre-install.sh | sh
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" >> redditstack/.env
```

.Renviron
```
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

# Installing Docker
```

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    make \
    gcc \
    libz-dev \
    gnupg \
    ca-certificates \
    git \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    libsodium-dev \
    libpq-dev \
    docker-ce \
    docker-ce-cli \
    containerd.io 


sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo groupadd docker | echo already added
sudo usermod -aG docker $USER

git clone https://github.com/fdrennan/redditstack.git
rm -rf redditstack/.git
