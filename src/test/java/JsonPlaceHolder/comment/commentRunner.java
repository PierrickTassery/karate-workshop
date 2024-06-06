package JsonPlaceHolder.comment;

import com.intuit.karate.junit5.Karate;

class commentRunner {

    @Karate.Test
    Karate testcomment() {
        return Karate.run("classpath:JsonPlaceHolder/comment").relativeTo(getClass());
    }

}
