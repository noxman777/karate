@ignore
Feature: Category APIS

  Scenario Outline:
  # note the 'text' keyword instead of 'def'
    * def  query =
    """
    {"categoryName":"<categoryName>","categoryDescription":"<categoryDescription>"}

    """


    Given url "http://103.79.223.60:8080/hooker/core/v1/categories"
    And request query
    And header Content-Type = 'application/json'
    When  method POST
    Then status 200
    * print 'The response is :', response


    Examples:
      | categoryName | categoryDescription |
      | test1        | tes2                |
      | test3        | tes4                |
      | test5        | tes6                |

#  Scenario: test
#
#    Given url 'http://103.79.223.60:8080/hooker/core/v1/categories/all'
#
#    When  method Get
#
#    Then status 200



