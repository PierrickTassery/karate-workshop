Feature: Create Comment with variables

Background:
  * url baseUrl
  * def commentId = 10
  * path 'comments/' + commentId
  * method get
  * status 200
  * def commentName = response.name
  * print 'the email of user 5 is:', commentName

Scenario: Create Comment with variables
  Given path 'comments'
  And request { postId: 1, name: #(commentName),  email: 'test@test.com',  body: 'Lorem ipsum dolor sit amet' }
  When method post
  Then status 201