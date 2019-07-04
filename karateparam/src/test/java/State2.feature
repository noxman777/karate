
Feature: Verify State2
  Scenario: Verify State2
#    * call read('file:C:/Users/cy0016/IdeaProjects/karateparam/src/test/java/State1.feature')
    Given def myJson = read('file:C:/Users/cy0016/IdeaProjects/karateparam/src/test/java/utils/Global.json')
    * print 'the value of myJson is:', myJson
    * def categoryName = 'June_19_Category'
    * def categoryDescription = 'June_19_Category_description'
    * eval myJson.data.cur_cat=categoryName
    * eval myJson.data.cur_desc=categoryDescription
    * print 'the value of myJson is:', myJson