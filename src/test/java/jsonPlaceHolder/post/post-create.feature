Feature: Post Create

  Background:
    * url baseUrl

  Scenario: Post Create
    Given path '/posts'
    And request { id: 101, title: 'Hello', body: 'World'}
    When method post
    Then status 201
    And match responseType == 'json'
    And match response contains {title: 'Hello'}



