RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://workstation-13.sdu1.eficode.academy:8080/)

if [ "$RESPONSE" -eq 200 ]; then
  echo "Test passed: Site is up and accessible."
  exit 0
else
  echo "Test failed: Site returned $RESPONSE"
  exit 1
fi
