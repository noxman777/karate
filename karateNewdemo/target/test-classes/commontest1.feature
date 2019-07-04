Feature: common
  Scenario:common
    * def DataClass = Java.type('com.mh.utils.DataStorage')
    * def Data = new DataClass()
    * def SQLClass = Java.type('com.mh.utils.SQLUtils')
    * def Sql = new SQLClass()
