Feature: UPDATE posts 

Background:
   * url baseUrl

Scenario: Update post

   * def post =
   """
      {
         "id": 1,
         "title": "Title updated"
     }
   """
  Given path '/posts/1'
  Given request post
  When method patch
  Then status 200
  And match post.title == response.title 
 