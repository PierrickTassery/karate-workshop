Feature: GET comments 

Background:
   * url baseUrl

Scenario: Get comments from user
  Given path '/comments'
  And param postId = 1
  When method get
  Then status 200
  #* print response 

 