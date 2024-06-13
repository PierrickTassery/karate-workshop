Feature: GET Posts 

Background:
   * url baseUrl

Scenario: GET Posts
    Given path '/posts'
    When method get
    Then status 200

Scenario: GET Posts
    Given path '/users/5/posts'
    When method get
    Then status 200