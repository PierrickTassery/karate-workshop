Feature: CREATE comments 

Background:
   * url baseUrl

Scenario: Create comment
   * def comment =
   """
      {
         "postId": 1,
         "name": "Test comment",
         "email": "Eliseo@gardner.biz",
         "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
     }
   """
  Given path '/comments'
  And request comment 
  When method post
  Then status 201
  And match response == { postId: '#number ', name:'#string' , email: '#string', body: '#string', id: '#number' }
  #* print response 

 