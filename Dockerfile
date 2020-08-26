# Elixir + Phoenix

FROM elixir:1.10.4

# Install debian packages
RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client curl

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR /app
EXPOSE 4000
