Feature: GET Users  

Background:
   * url baseUrl
   
Scenario: GET Users
  Given path '/users'
  When method get
  Then status 200

Scenario: GET Users by ID
  Given path '/users/5'
  When method get
  Then status 200
  And match response.email == "Lucio_Hettinger@annie.ca"
  * print 'the user 5 is:', response
  * print 'the email of user 5 is:', response.email
  * print 'the company of user 5 is:', response.company.name
