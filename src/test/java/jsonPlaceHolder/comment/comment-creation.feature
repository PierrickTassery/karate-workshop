Feature: Creat Comment

Background:
  * url baseUrl

Scenario: Test the creation of a comment
  Given path 'comments'
  And request { postId: 1, name: 'My Test Comment', email: 'test@example.com', body: 'This is a test comment.' }
  When method post
  Then status 201
  And match response == { id: '#number', postId: '#number', name: '#string', email: '#string', body: '#string' }
  