Feature: GET 

Background:
   * url baseUrl
   

Scenario: GET on Private
  Given path '/posts'
  When method get
  Then status 200