Feature: POST GET 

Background:
   * url baseUrl
   
Scenario: GET endpoint in order to test that the status code is 200.
  Given path '/posts'
  When method GET
  Then status 200

Scenario: Endpoint that retrieves all the posts for a user
   Given path '/users/5/posts'
   When method GET
   Then status 200
   * print response