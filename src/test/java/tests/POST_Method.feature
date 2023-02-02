Feature: Post API Demo

Background:
 * url 'https://reqres.in/api/'
 * header Accept = 'Application/json'
 * def expectedOutput = read('jsonfile.json')

Scenario: Post Demo 1

Given path 'users'
And request {"name":"morpheus","job":"leader"}
When method POST
Then status 201
And print response

#Assertion with Post
Scenario: Post Demo 3
Given path 'users'
And request {"name":"morpheus","job":"leader"}
When method POST
Then status 201
And match response == {"name": "morpheus", "job": "leader", "id": "#string", "createdAt": "#ignore"}
And print response

#Post with get response in different file
Scenario: Post Demo 3
Given path 'users'
And request {"name":"morpheus","job":"leader"}
When method POST
Then status 201
And match response == expectedOutput
#$ is repsones shortform
And match $ == expectedOutput
And print response