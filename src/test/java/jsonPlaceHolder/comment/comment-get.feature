Feature: Get Comment

  Background:
    * url baseUrl

  Scenario: Get Comment
    Given path '/comments/1'
    When method Get
    
    Then status 200
