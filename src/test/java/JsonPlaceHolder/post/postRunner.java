package jsonPlaceHolder.post;

import com.intuit.karate.junit5.Karate;

class userRunner {

    @Karate.Test
    Karate testuser() {
        return Karate.run("classpath:jsonPlaceHolder/post").relativeTo(getClass());
    }

}
