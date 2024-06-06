package jsonPlaceHolder.post;

import com.intuit.karate.junit5.Karate;

public class postRunner {@Karate.Test
Karate testuser() {
    return Karate.run("classpath:JsonPlaceHolder/post").relativeTo(getClass());
}
}
