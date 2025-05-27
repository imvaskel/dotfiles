command -q docker compose; and function compose --wraps "docker compose"
    docker compose $argv
end
