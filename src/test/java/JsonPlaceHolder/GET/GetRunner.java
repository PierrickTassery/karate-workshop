package JsonPlaceHolder.GET;

import com.intuit.karate.junit5.Karate;

class GetRunner {

    @Karate.Test
    Karate testGET() {
        return Karate.run("classpath:JsonPlaceHolder/GET").relativeTo(getClass());
    }

}
