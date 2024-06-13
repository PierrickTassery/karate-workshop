Feature: Get comment

  Background:
    * url baseUrl

  Scenario: Get comment
    Given path '/comments/1'
    When method Get
    Then status 200