@AccessControl
Feature: DELETE a User 

Background:
   * url baseUrl
   
Scenario: DELETE a User
  Given path '/users/4'
  When method delete
  Then status 200
