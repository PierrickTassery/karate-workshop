Feature: GET Users 

Background:
   * url baseUrl
   
Scenario: GET Users
  Given path '/users'
  When method get
  Then status 200

Scenario: GET Users
   Given path '/users/4'
   When method get
   Then status 200

Scenario: GET Users
  Given path '/users/5'
  When method get
  Then status 200

Scenario: GET Users
   Given path '/users/5'
   When method get
   * def userDetail = { "id": 5,"name": "Chelsey Dietrich","username": "Kamren","email": "Lucio_Hettinger@annie.ca","address": {"street": "Skiles Walks","suite": "Suite 351","city": "Roscoeview","zipcode": "33263","geo": {"lat": "-31.8129","lng": "62.5342"}},"phone": "(254)954-1289","website": "demarco.info","company": {"name": "Keebler LLC","catchPhrase": "User-centric fault-tolerant solution","bs": "revolutionize end-to-end systems"} }
* print 'the value of user 5 is:', userDetail
   Then status 200

Scenario: GET Users
   Given path '/users/5'
   When method get
   Then status 200
      * print response
      * print 'the value of company name is:', response.company.name
      * print 'the value of user with id 5 is:', response
   And match response.email == "Lucio_Hettinger@annie.ca" 
