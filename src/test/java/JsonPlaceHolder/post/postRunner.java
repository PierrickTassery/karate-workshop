package JsonPlaceHolder.post;

import com.intuit.karate.junit5.Karate;

class postRunner {

    @Karate.Test
    Karate testpost() {
        return Karate.run("classpath:JsonPlaceHolder/post").relativeTo(getClass());
    }

}
