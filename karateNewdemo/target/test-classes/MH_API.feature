Feature: MH_API2

Scenario: https://ray.mhqa.pub:8443/heartbeat/icapi/open/auth
Given url 'https://ray.mhqa.pub:8443/heartbeat/icapi/open/auth'
And header Authorization = 'Basic YmludTE6TTYvejQ2M2REMHkwTmVZSFRTVUdBdz09'
And header Content-Type = 'application/x-www-form-urlencoded'
And request [{"key":"grant_type","value":"client_credentials","type":"text"}]
When method POST

