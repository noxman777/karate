Feature: karate.set
  Scenario: karate.set\
* eval
"""
  var foo = function(v){ return v * v };
  var nums = [0, 1, 2, 3, 4];
  var squares = [];
  for (var n in nums) {
    squares.push(foo(n));
  }
  karate.set('temp', squares);
  """
* match temp == [0, 1, 4, 9, 16]

    * def json = read('file:C:/Users/cy0016/IdeaProjects/karateNewdemo/src/test/java/utils/test.json')
    * eval karate.set('json', '$.data.categoryName', 'newCategory')
    * print json