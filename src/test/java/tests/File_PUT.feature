Feature: PUT API Demo

Scenario: Put Demo 1

Given url 'https://reqres.in/api/users/2'
And request {"name":"morpheus","job":"IT"}
When method PUT
Then status 200
And print response
And print responseStatus 
