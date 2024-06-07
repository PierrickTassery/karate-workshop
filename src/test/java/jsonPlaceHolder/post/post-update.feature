Feature: Post update

  Background:
    * url baseUrl

  Scenario: Post update
    Given path '/posts/1'
    And request { "id": 1,"title": "foooodzdzdzoo","body": "bar","userId": 1}
    When method patch
    Then status 200
    And match responseType == 'json'
    And match response contains {title: 'foooodzdzdzoo'}