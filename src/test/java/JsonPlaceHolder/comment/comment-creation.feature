Feature: Create Comment

Background:
  * url baseUrl

Scenario: Create comment
  Given path 'comments'
  And request { postId: 1, name: 'KondratievaS', email: 'test@test.com', body: 'Lorem ipsum dolor sit amet' }
  When method post
  Then status 201
  And match response == { id: '#notnull', postId: '#number', name: '#present', email: '#string', body: '#string' }