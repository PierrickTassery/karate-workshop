Feature: DELETE a user

  Background:
    * url baseUrl

  Scenario: DELETE user
    Given path '/users/4'
    When method delete
    Then status 200