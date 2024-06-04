function fn() {

    // log request and response in pretty format can be useful for debugging
    karate.configure('logPrettyRequest', true);  
    karate.configure('logPrettyResponse', true);

    // configure reports for better performance in CI -> Can be commented for local execution
    //karate.configure("report", {showLog: false,showAllSteps: false}); 

  
    var config = {
      
      baseUrl : 'https://jsonplaceholder.typicode.com', // base URL for all the API calls
      //The same users exist in all environments to test the different roles
      
      // function to generate random name
      randomName: function () {
        return 'APIKarateAutomation' + java.util.UUID.randomUUID() + ''
      }, 
    }

    karate.configure('ssl', true); // Trust all certificates
    
    return config;
  }