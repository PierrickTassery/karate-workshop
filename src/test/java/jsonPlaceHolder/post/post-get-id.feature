Feature: POST get user id

  Background:
    * url baseUrl

  Scenario: Post Get
    Given path '/users/4/posts'
    When method get
    Then status 200
