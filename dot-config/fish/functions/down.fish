command -q docker; and function down --wraps "docker compose down" 
    docker compose down $argv
end
