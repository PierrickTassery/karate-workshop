Feature: GET Users

  Background:
    * url baseUrl

  Scenario: GET Users
    Given path '/users'
    When method get
    Then status 200
