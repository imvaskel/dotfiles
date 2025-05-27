command -q docker; and function up --wraps "docker compose up"
    docker compose up $argv
end
