Feature: common features
  Scenario: common scenerio

    * def ReadPropertyFile =
"""
function(args) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.read(args);
}
"""
#* def result =  Java.type('examples.DataStorage').read(args);
#    * def result = ReadPropertyFile ('categoryId')


* def WritePropertyFile =
   """
function(key,value) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.write(key,value);
}
"""


    * def ConctinateTwoStrings =
   """
function(string1,string2) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.concatinatedString(string1,string2);
}
"""


    * def formatGivenDate =
   """
function(dateInString,dateFormat) {
 var DataStorage = Java.type('examples.DataStorage');
 var dS = new DataStorage();
 return dS.formatDate(dateInString,dateFormat);
}
"""

    * def BasicToken =

    """
    function(username,pasword)
    {
    var basic = Java.type('examples.BasicTokenProvider');
    var getT = new basic();
    return getT.getBasicToken(username,pasword);
    }
    """

    * def BasicTokenTP =

    """
    function()
    {
    var basic = Java.type('examples.BasicTokenProvider');
    var getT = new basic();
    return getT.getBasicTokenTP();
    }
    """

    * def Messages =

    """
    function(data,length)
    {
    var basic = Java.type('examples.TPMessages');
    var getT = new basic();
    return getT.updateMalay(data,length);
    }
    """