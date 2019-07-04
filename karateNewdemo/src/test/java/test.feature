
Feature: Verify Category API Operations
  Scenario: Verify Create Category
    Given def myJson = read('file:C:/Users/cy0016/IdeaProjects/karateNewdemo/src/test/java/utils/test.json')

    * print 'the value of myJson is:', myJson

#    * print 'the value of myJson.cat is:', myJson.data.categoryName
#
#    And url myJson.URL_POST
#
#    And request myJson.data
#
#    And headers myJson.contenType
#
#    When  method POST
#
#    Then status 200
#
#    * def res = response
#
#    * def prevCategoryId = res.data.categoryId
#
#    * print 'response:', response
#
#    * print 'categoryId:', prevCategoryId


    Given url myJson.URL_GET

    When  method Get

    Then status 200

    And match response.data.response.*.categoryId contains prevCategoryId

    * def t = response
    * print 'response:', t

