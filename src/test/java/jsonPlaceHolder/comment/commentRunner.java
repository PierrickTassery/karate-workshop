package jsonPlaceHolder.comment;

import com.intuit.karate.junit5.Karate;

public class commentRunner {@Karate.Test
Karate testuser() {
    return Karate.run("classpath:JsonPlaceHolder/comment").relativeTo(getClass());
}
}
