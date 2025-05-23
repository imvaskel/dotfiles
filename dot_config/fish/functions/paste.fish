function paste
    curl --data-binary @$argv https://mystb.in/api/paste | jq -r '.id' | xargs -0 printf 'https://mystb.in/%s'
end
