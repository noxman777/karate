Feature: Good2

Scenario: http://103.79.223.60:8080/hooker/core/v1/categories
Given url 'http://103.79.223.60:8080/hooker/core/v1/categories'
And request [{"key":"CateegoryName","value":"23","type":"text"},{"key":"CategoryId","value":"34","type":"text"}]
When method POST

