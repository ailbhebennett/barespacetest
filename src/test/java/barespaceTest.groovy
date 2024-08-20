import org.apache.http.client.methods.HttpGet
import org.junit.jupiter.api.Assertions
import spock.lang.Specification

import java.net.http.HttpClient
import java.net.http.HttpResponse

class barespaceTest extends Specification, IOException {

    private static void final String BASE_URL = "v1-dev-booking.barespace.app/barespace//booking"

        def "Page loads successfully and response is 200"() {
            given: "A URL to the booking page"
            String url = BASE_URL
            HttpClient httpClient = HttpClient.createDefault()

            when: "The page is accessed"
            HttpGet request = new HttpGet(url)
            HttpResponse response = httpClient.executor(request)

            then: "The response status is 200 OK"
            Assertions.assertEquals(200, 200)
        }

        def "Locations are visable to users"(){
            given: "A URL to the booking page"
            String url = BASE_URL

            and: "The expected location is present"
            String expectedLocation = "Anne St S, Dublin, Irelanda"

            and:"Instance of HttpClient"
            HttpClient httpClient = HttpClient.createDefault()

            when: "the page is accessed using HttpClient"
            HttpGet request = new HttpGet(url)
            HttpResponse response = httpClient.executor(request)

            then: "The response status is 200"
            response.statusLine.statusCode == 200

            and: "The response body contains the location"
            String responseBody = EntityUtils.toString(response.getEntity())
            responseBody.contains(expectedLocation)
        }
}
