@valid
Feature: Demo Testing
  Scenario Outline:Testing Common Feature
#    Given url 'http://103.79.223.60:8080/hooker/core/v1/categories/all'
##    And method Get
##    Then status 200
#    * json value = {read:'access_token'}
#    * def myJson = read('file:C:/Users/cy0016/IdeaProjects/karateNewdemo/src/test/java/utils/data.json')
    * def t = call read('classpath:OuthToken.feature') {username:<usrname>,password:<paswd>}
    * print t
    Examples:
      | usrname | paswd |
      | dev     |mhrulez|
      | binu1   |ad     |

#    * def result = ReadPropertyFile ('test')
#    * print result
#    * def token = 'response.data.categoryId'
#    * def result = WritePropertyFile('test',token)
#    * def newString = ConctinateTwoStrings('new','test')
#    * print newString
#    * def date = formatGivenDate('7/Jun/2013','dd/MMM/yyyy')
#    * print date
