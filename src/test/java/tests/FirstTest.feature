Feature: Sample API test

  Scenario: Test a sample GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
