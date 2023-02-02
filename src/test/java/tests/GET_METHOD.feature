Feature: Sample API test

	Background: 
	* url 'https://reqres.in/api'
	* header Accept = 'Application/json'

  Scenario: Test a sample GET API
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
		And print responseStatus
		And print responseTime
		And print responseHeaders
		And print responseCookies
		
		Scenario: get with path and param
		Given path '/users'
		And param page  = 2
    When method GET
    Then status 200
    And print response
    
    
    
    
    