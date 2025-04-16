# Development

## VSCode devcontainer

Use VSCode devcontainer to develop R2R backend server.
- Start VSCode Editor with devcontainer
- Open the command palette and select `Dev Containers: Reopen in Container`.

## Install dependencies

Open the terminal in VSCode and run the following command to install the dependencies.

```bash
cd /app/py
uv sync --extra core
```

## Development R2R Server with hot-reloading

- Get the OpenAI API key from [OpenAI](https://platform.openai.com/api-keys). And set it to the environment variable `OPENAI_API_KEY`.
- Export the environment variables and start the server with hot-reloading in the devcontainer terminal.

```bash
cd /app/py

vscode ➜ /app/py $ source /app/py/.venv/bin/activate
export OPENAI_API_KEY=sk-proj-xxx
export TELEMETRY_ENABLED=false
export R2R_POSTGRES_HOST=postgres
export R2R_POSTGRES_DBNAME=postgres
export R2R_POSTGRES_PORT=5432
export R2R_POSTGRES_PASSWORD=postgres
export R2R_POSTGRES_USER=postgres
export R2R_PROJECT_NAME=r2r_default
export PYTHONUNBUFFERED=1
export PYTEST_ADDOPTS=--color=yes
export R2R_CONFIG_PATH=/app/py/core/configs/r2r_openai.toml
export CLUSTERING_SERVICE_URL=http://graph_clustering:7276
# export R2R_LOG_LEVEL=DEBUG
uvicorn core.main.app_entry:app --host 0.0.0.0 --port 7272 --reload
```

Stop the server with `Ctrl+C` in the terminal.

## Use R2R Dashboard

Open the browser and navigate to `http://localhost:7273`.
Default username and password are `admin@example.com` and `change_me_immediately`.
