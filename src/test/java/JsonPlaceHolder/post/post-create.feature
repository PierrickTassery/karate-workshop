Feature: CREATE posts 

Background:
   * url baseUrl

Scenario: Get posts

   * def post =
   """
      {
         "title": "My new post",
         "body": "The body of my new post :)",
         "userId": 1
     }
   """
  Given path '/posts'
  Given request post
  When method post
  Then status 201
  And match response contains {'title': 'My new post'}
 