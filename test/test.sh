HOSTNAME=$(hostname)

APP_URL="http://${HOSTNAME}:8080/"

RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

if [ "$RESPONSE" -eq 200 ]; then
  echo "Test passed: Site is up and accessible."
  exit 0
else
  echo "Test failed: Site returned $RESPONSE"
  exit 1
fi
