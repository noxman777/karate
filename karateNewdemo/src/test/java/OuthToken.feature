Feature: Token call
  Scenario: verify token call
    Given url 'https://ray.mhqa.pub:8443/heartbeat/icapi/open/auth'
    * call read('classpath:common.feature')
    * def auth = BasicToken(username,password)
    * def token = auth
    * print token
    And header Authorization = token
    And form field grant_type = 'client_credentials'
    Then method POST
    Then status 200
    * print 'response:', response
    * def access_token = response.access_token
    * def expiry_time = response.expires_in
    And match response.token_type == 'Bearer'
    * call read('classpath:common.feature')
    * def result = WritePropertyFile('access_token',access_token)
    * def result = WritePropertyFile('expiry_time',expiry_time)

    