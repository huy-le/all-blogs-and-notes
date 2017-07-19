https://developer.atlassian.com/bitbucket/server/docs/latest/how-tos/updating-build-status-for-commits.html

curl -u username:password -H "Content-Type: application/json" -X POST http://localhost:7990/bitbucket/rest/build-status/1.0/commits/9e72f04322c4a1f240e0b3158c67c3c19cdd16e7 -d @build0.json
