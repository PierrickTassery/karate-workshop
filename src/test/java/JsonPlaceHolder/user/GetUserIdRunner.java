package JsonPlaceHolder.user;

import com.intuit.karate.junit5.Karate;

public class GetUserIdRunner {
    @Karate.Test
    Karate testUserId(){
    return Karate.run("get-user-id.feature").relativeTo(getClass());}
}

