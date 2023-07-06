FROM ghcr.io/rails/cli

# Install "Postgres" / "MySQL" native dependencies.
RUN apt-get update -qq && apt-get install -y default-libmysqlclient-dev libpq-dev vim