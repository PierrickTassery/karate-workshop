Feature: GET Users  

Background:
   * url baseUrl
   
Scenario: GET Users
  Given path '/users'
  When method get
  Then status 200

  Scenario: Check that the status code is 200 when retrieving user with id=5
   Given path '/users/5'
   When method get
   Then status 200

Scenario: Print the email of the user with id=5
   Given path '/users/5'
   When method get
   Then status 200
  * print 'the email of the user is:', response.email

  Scenario: Print the name of the company of the user with id=5
   Given path '/users/5'
   When method get
   Then status 200
  * print 'the company of the user is:', response.company.name

  Scenario: Verify that the email of the user with id=5 is Lucio_Hettinger@annie.ca using match
   Given path '/users/5'
   When method get
   Then status 200
   And match response.email == 'Lucio_Hettinger@annie.ca'