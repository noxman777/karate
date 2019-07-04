@valid
Feature: Verify Category API Operations
  Scenario: Verify Create Category
    Given def csv = read('file:C:/Users/cy0099/IdeaProjects/karateNewdemo/src/test/java/utils/ttt.csv')
    * print 'the value of txt is:', csv

    * print 'the value of txt.cat is:', csv[0]
    And url csv[0].URL
    And request {"categoryName":csv[0].categoryName,"categoryDescription":csv[0].categoryDescription}
    And header Content-Type = 'application/json'
    * print 'request:', request
    When  method POST
    Then status 200
    * def res = response
