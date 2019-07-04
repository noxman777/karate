@ignore
Feature: Demo Testing
  Background:
    * url someUrlBase
  Scenario: Testing valid end Ponits
#    Given url "http://103.79.223.60:8080/hooker/core/v1/categories/all"
* print someUrlBase
    When  method Get
    Then status 200
    And match $.message == "Categories fetch success"
    #And  match each response.message == "Categories fetch success"
  Scenario: Testing
#    Given url "http://103.79.223.60:8080/hooker/core/v1/categories"
    And request {"categoryName":"test","categoryDescription":"test"}

    And para
    And header Content-Type = 'application/json'
    When  method POST
    Then status 200