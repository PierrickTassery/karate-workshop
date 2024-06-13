Feature: GET Posts 

Background:
   * url baseUrl

Scenario: Create posts
    Given path '/posts'
    And request { userId: 10, title: 'Article', body: 'Lorem ipsum dolor sit amet' }
    When method post
    And match response contains { title: 'Article' }