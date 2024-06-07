Feature: POST get user

  Background:
    * url baseUrl

  Scenario: Post Get
    Given path '/posts'
    When method get
    Then status 200