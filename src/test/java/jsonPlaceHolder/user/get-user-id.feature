Feature: GET User id

  Background:
    * url baseUrl

  Scenario: GET Users
    Given path '/users/5'
    When method get
    Then status 200