## Pre requisite : 
 - [Git](https://git-scm.com/download) - to clone this project, or you could just download the source code as a ZIP file
 - Extract *KarateWorkshop.postman_environment.json* & *Karate workshop.postman_collection.json* from the repository and import them in Postman
 - Explore the API under test using the **Karate workshop** collection imported along with the **KarateWorkshop** environment

## Exercice 1 :


- Create a branch "Exercice1_yourName" (https://inovasoftware.jira.com/wiki/spaces/DEALDEV/pages/3910172673/Version+Control+Guide+Branch+Management+Pull+Request)
- Write another Scenario in the user-get.feature to test the `/users/{{id}}` endpoint
    - Check that the status code is **200** when retrieving user with id=5 (https://karatelabs.github.io/karate/#status)
    - Print the response of the request tested in the previous step (https://karatelabs.github.io/karate/#print)
    - Print the email of the user with id=5
    - Print the name of the company of the user with id=5
    - Verify that the email of the user with id=5 is **Lucio_Hettinger@annie.ca** using match (https://karatelabs.github.io/karate/#match) (*page 93 of the PDF : Matching values*)
    - Run your test using **userRunner** & **jsonPlaceHolderTest** file (ask me to understand the difference)

 -  Create a feature file called user-delete.feature in user folder and verify that the status code is 200 when deleting the user with id = 4
	 - Add a tag called AccessControl to your feature file (https://karatelabs.github.io/karate/#tags) and run tour test again. CHeck the report.
  - Call me to show you how to commit your branch and create a Pull Request in Github ```(Ctrl+Shift+G)```

       

## Exercice 2 :



- Create a folder called Post under jsonPlaceHolder. Create the file **postRunner.java** (You can copy the userRunner file and just update the path.)
- Create a feature file called post-get.feature.
    - Add a scenario to test the `/posts` endpoint in order to test that the status code is **200**.
    - Add another scenario to test the `/users/{{id}}/posts` endpoint that retrieves all the posts for a user. Verify that the status code is **200.**
- Create a feature file called post-create.feature.
    - Add a scenario to test the post creation. Test that the status code returned is **200.** (*page 99 of the PDF : Making requests with payloads*)
        - Any failure?
    - Add a test in this scenario to check that the title returned in the response is the one you put in the body of the creation request using **match contains** (*page 94 of the PDF : Checking the response elements’ existence with match contains*)
- Create a feature file called post-update.feature.
    - Add a scenario to test the post update. Update the title of the post with id = 1 to “Title updated”. Test that the status code is **200.**
    - Add a test in the scenario to test that the title returned in the response is “Title updated” using match contains.

## Exercice 3 :



- Create a folder called Comment under jsonPlaceHolder. Create the file **commentRunner.java** (You can copy the userRunner file and just update the path.)
- Create a feature file called comment-get.feature.
    - Add a scenario to test `/comments?postId={{postID}}` endpoint. Test that the status code is **200** when you try to retrieve all the comments for postId = 1 (https://karatelabs.github.io/karate/#param)
- Create a feature file called comment-creation.feature.
    - Add a scenario to test the comment creation. Test that the status code returned is **201**
    - Update your scenario to test the type of the response using fuzzy matchers (https://karatelabs.github.io/karate/#fuzzy-matching) (*page 94 of the PDF : Using fuzzy matchers*)
- Create a feature file called comment-variableCreation.feature
    - In the Background of the Scenario, retrieve the comment with id= 5 using `/comments/5` endpoint. Create a variable to store the name of the comment.
    - In the Scenario itself, create a new comment using the variable created in the Background and make sure the status returned is **201**.
    - *page 101 of the PDF : Using variables*
    - https://karatelabs.github.io/karate/#setting-and-using-variables
    - https://karatelabs.github.io/karate/#script-structure
