Feature: GET Posts 

Background:
   * url baseUrl

Scenario: Update post
    Given path '/posts/1'
    And request {"id": 1, "title": 'Article modified' }
    When method patch
    And match response contains { title: 'Article modified' }
    Then status 200
    