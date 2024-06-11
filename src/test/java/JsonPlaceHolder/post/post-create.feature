Feature: GET Posts 

Background:
   * url baseUrl

Scenario: create posts
    Given path '/posts'
    And request { userId: 10, title: 'Hello', body: 'World' }
    When method post
    And match response contains { title: 'Hello' }
