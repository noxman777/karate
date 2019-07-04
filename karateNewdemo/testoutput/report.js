$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("test.feature");
formatter.feature({
  "line": 2,
  "name": "Demo Testing",
  "description": "",
  "id": "demo-testing",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@valid"
    }
  ]
});
formatter.scenario({
  "line": 3,
  "name": "Testing valid end Ponits",
  "description": "",
  "id": "demo-testing;testing-valid-end-ponits",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 4,
  "name": "url \"http://103.79.223.60:8080/hooker/core/v1/categories/all\"",
  "keyword": "Given "
});
formatter.step({
  "line": 5,
  "name": "method Get",
  "keyword": "When "
});
formatter.step({
  "line": 6,
  "name": "status 200",
  "keyword": "Then "
});
formatter.step({
  "line": 7,
  "name": "match response.message \u003d\u003d \"Categories fetch success\"",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "\"http://103.79.223.60:8080/hooker/core/v1/categories/all\"",
      "offset": 4
    }
  ],
  "location": "StepDefs.url(String)"
});
formatter.result({
  "duration": 525036617,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Get",
      "offset": 7
    }
  ],
  "location": "StepDefs.method(String)"
});
formatter.result({
  "duration": 1353085942,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "200",
      "offset": 7
    }
  ],
  "location": "StepDefs.status(int)"
});
formatter.result({
  "duration": 584704,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {},
    {
      "val": "response.message",
      "offset": 6
    },
    {},
    {
      "val": "\u003d\u003d",
      "offset": 23
    },
    {
      "val": "\"Categories fetch success\"",
      "offset": 26
    }
  ],
  "location": "StepDefs.matchEquals(String,String,String,String,String)"
});
formatter.result({
  "duration": 15974392,
  "status": "passed"
});
formatter.scenario({
  "comments": [
    {
      "line": 8,
      "value": "#And  match each response.message \u003d\u003d \"Categories fetch success\""
    }
  ],
  "line": 9,
  "name": "Testing",
  "description": "",
  "id": "demo-testing;testing",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 10,
  "name": "url \"http://103.79.223.60:8080/hooker/core/v1/categories\"",
  "keyword": "Given "
});
formatter.step({
  "line": 11,
  "name": "request {\"categoryName\":\"test\",\"categoryDescription\":\"test\"}",
  "keyword": "And "
});
formatter.step({
  "line": 12,
  "name": "header Content-Type \u003d application/json",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "method POST",
  "keyword": "When "
});
formatter.step({
  "line": 14,
  "name": "status 200",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "\"http://103.79.223.60:8080/hooker/core/v1/categories\"",
      "offset": 4
    }
  ],
  "location": "StepDefs.url(String)"
});
formatter.result({
  "duration": 24176628,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "{\"categoryName\":\"test\",\"categoryDescription\":\"test\"}",
      "offset": 8
    }
  ],
  "location": "StepDefs.request(String)"
});
formatter.result({
  "duration": 245760,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Content-Type",
      "offset": 7
    },
    {
      "val": "application/json",
      "offset": 22
    }
  ],
  "location": "StepDefs.header(String,String\u003e)"
});
formatter.result({
  "duration": 768000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "POST",
      "offset": 7
    }
  ],
  "location": "StepDefs.method(String)"
});
formatter.result({
  "duration": 351304182,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "200",
      "offset": 7
    }
  ],
  "location": "StepDefs.status(int)"
});
formatter.result({
  "duration": 51541,
  "status": "passed"
});
});