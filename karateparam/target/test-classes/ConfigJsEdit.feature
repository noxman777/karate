Feature: Call feature
  Scenario: Verify Call
  * def curr = category.categoryName
  * print 'the value of categoryName is:', curr
  * eval category.categoryName = 'new_category'
  * print 'New value is ' , category.categoryName