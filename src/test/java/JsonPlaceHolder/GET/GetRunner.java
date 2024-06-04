package jsonPlaceHolder.Get;

import com.intuit.karate.junit5.Karate;

class GetRunner {

    @Karate.Test
    Karate testGet() {
        return Karate.run("classpath:jsonPlaceHolder/Get").relativeTo(getClass());
    }

}
