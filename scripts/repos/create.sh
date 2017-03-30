API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/repos"
TOKEN="BAhJIiUyNWI1MzYwYTM5ZTk1MzE1NzJlNjJlNzE3YzM3ZjJiNQY6BkVG--7d5824e14b6bd930dc73a77cc73ed12f83fae824"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "repo": {
      "title": "ugjgjmgj",
      "language": "Ruby",
      "score": "5",
      "forks": "5",
      "description": "foobarbuzzbizz"
    }
  }'

  echo
