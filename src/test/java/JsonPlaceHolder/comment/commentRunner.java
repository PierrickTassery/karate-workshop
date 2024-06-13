package jsonPlaceHolder.comment;

import com.intuit.karate.junit5.Karate;

class commentRunner {

    @Karate.Test
    Karate testuser() {
        return Karate.run("classpath:jsonPlaceHolder/comment").relativeTo(getClass());
    }

}
