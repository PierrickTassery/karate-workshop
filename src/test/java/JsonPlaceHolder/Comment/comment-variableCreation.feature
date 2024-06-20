Feature: Comment

Background:
   * url baseUrl
   Given path '/comments/5'
   When method GET
   * def name = response.name

Scenario:  Create post using stored variable
   Given path '/comments'
   When method POST
   And request {postId: 1, name: '#(name)', email: "testEmail@test.com", body: "test body"}
   Then status 201
   * print "post name is: ", name