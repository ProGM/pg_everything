#!/bin/bash
set -e

cd /tmp
sudo apt update
sudo apt install -y just

sudo service postgresql start

sudo -u postgres createuser -s vscode
sudo -u postgres createdb -O vscode vscode
sudo -u postgres psql -c "ALTER USER vscode WITH PASSWORD 'vscode';"

cd /tmp
git clone https://github.com/timescale/pgai.git
cd pgai
git checkout pgai-v0.12.1
sudo python3 projects/extension/build.py build-install
cd projects/extension
just install-sql

python3 -m venv ~/pgai-venv
source ~/pgai-venv/bin/activate
pip install --upgrade pip
pip install pgai
pip install pgai[vectorizer-worker]

source ~/pgai-venv/bin/activate
pgai install -d $DATABASE_URL

# Run the setup SQL
echo "Setting up extensions in PostgreSQL..."

psql $DATABASE_URL -f /workspaces/pg_everything/setup_extensions.sql
psql $DATABASE_URL -f /workspaces/pg_everything/setup_authentication.sql
psql $DATABASE_URL -f /workspaces/pg_everything/setup_endpoints.sql
sudo service postgresql restart


psql $DATABASE_URL -c "ALTER DATABASE vscode SET ai.openai_api_key TO '${OPENAI_API_KEY}';"
psql $DATABASE_URL -c "SELECT set_config('ai.openai_api_key', '${OPENAI_API_KEY}', true);"
psql $DATABASE_URL -f /workspaces/pg_everything/setup_tables.sql
