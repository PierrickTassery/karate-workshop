Feature: DELETE Users  

Background:
   * url baseUrl
   
@tag=AccessControl
Scenario: DELETE Users
  Given path '/users/4'
  When method delete
  Then status 200

