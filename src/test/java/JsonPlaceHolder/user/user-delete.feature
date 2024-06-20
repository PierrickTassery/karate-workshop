@AccessControl
Feature: DELETE Users  

Background:
   * url baseUrl
   
Scenario: DELETE Users
  Given path '/users/4'
  When method DELETE
  Then status 200