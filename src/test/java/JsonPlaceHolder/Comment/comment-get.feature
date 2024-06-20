Feature: Comment

Background:
   * url baseUrl
   
Scenario: GET endpoint in order to test that the status code is 200.
  Given path '/comments'
  And param postId = 1
  When method GET
  Then status 200
  * print response