Feature: Verify State1
  Scenario: Verify State1
    Given def myJson = read('file:C:/Users/cy0016/IdeaProjects/karateparam/src/test/java/utils/Global.json')
    * def categoryName = 'June_18_Category'
    * def categoryDescription = 'June_18_Category_description'
     * eval myJson.data.cur_cat=categoryName
     * eval myJson.data.cur_desc=categoryDescription
#    * def t = karate.set('myJson,myJson.data.categoryName',categoryName)
    * print 'the value of myJson is:', myJson
