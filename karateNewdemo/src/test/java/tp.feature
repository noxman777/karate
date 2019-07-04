Feature: Token call
  Scenario: verify token call
    Given url 'https/rocketshiptest.tuneprotect.com/rocketship/v1/oauth/token'
    And header Authorization = 'Basic MTIzNDVxd2VydHk6Y04rTVdwK3E5UDRrMWNTcmR4RWU3Zz09'
    Then header Accept = 'application/json, text/plain, */*'
    And  header Content-Type = 'application/x-www-form-urlencoded'
    Then header Accept-Language = 'en-us'
    And  form field grant_type = 'client_credentials'
    Then form field scope = 'customer'
    Then form field deviceId = '6E1AB112-928D-46E1-9093-BD19221B6683'
    Then form field os = 'iOS'
    Then form field osVersion = '12.0.1'
    Then form field platform = 'mobile'
    Then form field sessionId = '6E1AB112-928D-46E1-9093-BD19221B66831540458480550'
    Then method POST
    Then status 200
#    * print 'response:', response
#    * def access_token = response.access_token
#    * def expiry_time = response.expires_in
#    And match response.token_type == 'Bearer'
#    * call read('classpath:common.feature')
#    * def result = WritePropertyFile('access_token',access_token)
#    * def result = WritePropertyFile('expiry_time',expiry_time)
