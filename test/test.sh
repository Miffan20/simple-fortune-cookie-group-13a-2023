RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/)

if [ "$RESPONSE" -eq 200 ]; then
  echo "Test passed: Site on localhost:8080 is up and accessible."
  exit 0
else
  echo "Test failed: Site on localhost:8080 returned $RESPONSE"
  exit 1
fi
