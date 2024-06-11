Feature: GET Users 

Background:
   * url baseUrl

@AccessControl 
Scenario: GET Users
    Given path '/users/4'
    When method delete
    Then status 200