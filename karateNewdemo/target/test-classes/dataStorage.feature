Feature: dataStorage utilities
  Scenario: properties file read and write
    * def DataClass = Java.type('examples.DataStorage')
    * def Data = new DataClass()
    * def read = Data.read(readkey)
    * print read
#  Scenario: properties file write
    * def write = Data.write(writekey,value)

