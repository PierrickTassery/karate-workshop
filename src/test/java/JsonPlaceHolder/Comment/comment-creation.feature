Feature: Comment

Background:
   * url baseUrl
   
Scenario: POST endpoint in order to test that the status code is 201.
  Given path '/comments'
  And request {postId: 1, name: "Test comment name", email: "testEmail@test.com", body: "test body"}
  When method POST
  Then status 201
  And match response == {postId: #ignore, name: "Test comment name", email: "testEmail@test.com", body: "test body", id: #notnull}