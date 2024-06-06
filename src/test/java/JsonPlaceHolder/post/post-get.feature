Feature: GET posts 

Background:
   * url baseUrl

Scenario: Get posts
  Given path '/posts'
  When method get
  Then status 200

Scenario: Get user posts
   Given path '/users/1/posts'
   When method get
   Then status 200
 