Feature: GET Users 

Background:
   * url baseUrl
   
Scenario: GET Users
  Given path '/users'
  When method get
  Then status 200


Scenario: GET 1 User
   Given path '/users/5'
   When method get
   Then status 200
   * print "Response: ", response
   * print "Email: ", response.email
   And match response.email == "Lucio_Hettinger@annie.ca"