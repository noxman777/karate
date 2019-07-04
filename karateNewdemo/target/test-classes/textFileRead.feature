@ignore
Feature: Verify Category API Operations
  Scenario: Verify Create Category
    Given def txt = read('file:C:/Users/cy0099/IdeaProjects/karateNewdemo/src/test/java/utils/testnew.txt')
    * print 'the value of txt is:', txt

    * print 'the value of txt.cat is:', txt
    And url txt
    And request {"categoryName":"test","categoryDescription":"test"}
    And header Content-Type = 'application/json'
    * print 'request:', request
    When  method POST
    Then status 200
    * def res = response
