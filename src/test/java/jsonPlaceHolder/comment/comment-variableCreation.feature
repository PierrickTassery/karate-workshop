Feature: Create a comment using a variable

Background:
  * url baseUrl
  * def commentId = 5
  * path 'comments/' + commentId
  * method get
  * status 200
  * def commentName = response.name

Scenario: Create a new comment using the retrieved name
  Given path 'comments'
  And request { postId: 1, name: commentName,  email: 'test@example.com',  body: 'This is a test comment using the retrieved name.' }
  When method post
  Then status 201
  And match response == { id: '#number', postId: '#number', name: '#string', email: '#string', body: '#string' }