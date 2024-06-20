Feature: POST UPDATE 

Background:
   * url baseUrl
   
Scenario: scenario to test the post update
  Given path '/posts/1'
  And request {title: 'Title updated'}
  When method PATCH
  Then status 200
  And match response contains {title: 'Title updated'}

