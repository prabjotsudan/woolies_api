package weather;

import com.intuit.karate.junit5.Karate;

class Runner {
    
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
    
}
