Feature: CREATE comment variable 

Background:
   * url baseUrl
   Given path '/comments/5'
   When method get
   * def commentName = response.name

Scenario: Create comment
   * def comment =
   """
      {
         "postId": 1,
         "name": #(commentName),
         "email": "julia.dulac@inpart.io",
         "body": "JDU comment body"
     }
   """
  Given path '/comments'
  And request comment 
  When method post
  Then status 201

 