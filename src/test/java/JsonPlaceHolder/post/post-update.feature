Feature: GET Posts 

Background:
   * url baseUrl

Scenario: test the post update
    Given path '/posts/1'
    And request {"id": 1, "title": 'Title updated' }
    When method patch
    And match response contains { title: 'Title updated' }
    Then status 200
    