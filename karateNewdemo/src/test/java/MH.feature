Feature: MH1

Scenario: https://ray.mhqa.pub:8443/heartbeat/icapi/open/auth
Given url 'https://ray.mhqa.pub:8443/heartbeat/icapi/open/auth'
And header Authorization = 'Basic YmludTE6TTYvejQ2M2REMHkwTmVZSFRTVUdBdz09'
And header Content-Type = 'application/x-www-form-urlencoded'
When method POST

