API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/bookmarked_repos"
TOKEN="BAhJIiUyNWI1MzYwYTM5ZTk1MzE1NzJlNjJlNzE3YzM3ZjJiNQY6BkVG--7d5824e14b6bd930dc73a77cc73ed12f83fae824"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "repo": {
      "title": "'"${TITLE}"'",
      "language": "'"${LANGUAGE}"'",
      "score": "'"${SCORE}"'",
      "forks": "'"${FORKS}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

  echo
