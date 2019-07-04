Feature: tp

  Scenario: tp
    Given url 'http://18.220.30.78:9000/ums/oauth/token'
    * call read('classpath:common.feature')
    * def auth = BasicTokenTP()
    Then form field username = 'jEBQcQqtdBI=/vidhyasree.ts@cycloides.co.in'
    Then form field password = 'hzc+5t86hCjFnAACiMmJ9A=='
    Then form field grant_type = 'password'
    And header Accept = 'application/json, text/plain, */*'
    And header Content-Type = 'application/x-www-form-urlencoded'
    Then header Authorization = auth
    Then method post
    * def token = 'bearer '+response.access_token
    Given url 'http://18.220.30.78:9000/cms/rocketship/cms/v1/message'
    And form field profileId = '5d1a0ae1f04478000817e73b'
    And form field pageNumber = '0'
    And form field pageSize = '20'
    And form field sortOrder = 'asc'
    And form field sortKey = 'messageKey'
    And form field searchKey = ''
    And form field exactMatch = 'false'
    And header Accept = 'application/json, text/plain, */*'
    And header Accept-Language = 'en-US,en;q=0.9'
    Then header Authorization = token
    Then method get
    * print response
    * def arrayListOfMessages = response.data.profileDataResponses
    * print arrayListOfMessages
    * def arrayListOfMessagesLength = response.data.totalCount
    * print arrayListOfMessagesLength
    * call read('classpath:common.feature')
    * def data = Messages(arrayListOfMessages,arrayListOfMessagesLength)
    * print data