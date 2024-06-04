package jsonPlaceHolder.user;

import com.intuit.karate.junit5.Karate;

class userRunner {

    @Karate.Test
    Karate testuser() {
        return Karate.run("classpath:jsonPlaceHolder/user").relativeTo(getClass());
    }

}
