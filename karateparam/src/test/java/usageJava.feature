@ignore
Feature: Category APIS
Scenario: Category Create
* def doStorage =
  """
function(args) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.write(args);
}
"""

  Given url "http://103.79.223.60:8080/hooker/core/v1/categories"
  And request {"categoryName":"test","categoryDescription":"test"}
  And header Content-Type = 'application/json'
  When  method POST
  Then status 200
* def token = response.data.categoryId
* def result = call doStorage {'key': #(token)}
  * print 'the value of response.cat is:', result

  Scenario: Get All Categories
    * def doStorage =
"""
function(args) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.read(args);
}
"""
  Given url 'http://103.79.223.60:8080/hooker/core/v1/categories/all'

  When  method Get

  Then status 200
    * def result = call doStorage 'categoryId'
  And match response.data.response.*.categoryId contains result