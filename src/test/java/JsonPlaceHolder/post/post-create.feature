Feature: POST GET 

Background:
   * url baseUrl
   
Scenario: GET endpoint in order to test that the status code is 200.
  Given path '/posts'
  When method GET
  Then status 200

Scenario: Endpoint that retrieves all the posts for a user
   Given path '/users/5/posts'
   When method GET
   Then status 200
   * print "RESPONSE:",  response

Scenario: scenario to test the post creation
   Given path '/posts'
   And request {userId:5, title: 'Post Title', body: 'testing the post creation'}
   When method POST
   Then status 200
   
Scenario: scenario to check that the title returned in the response
   Given path '/posts'
   And request {userId:5, title: 'Post Title', body: 'testing the post creation'}
   When method POST
   Then status 201
   And match response contains {title: 'Post Title'}
