package JsonPlaceHolder.post;

import com.intuit.karate.junit5.Karate;

class postRunner {

    @Karate.Test
    Karate testuser() {
        return Karate.run("classpath:JsonPlaceHolder/post").relativeTo(getClass());
    }

}
