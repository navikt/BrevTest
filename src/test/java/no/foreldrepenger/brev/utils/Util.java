package no.foreldrepenger.brev.utils;

import io.restassured.http.ContentType;
import io.restassured.response.Response;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.Map;
import java.util.Properties;

import static io.restassured.RestAssured.given;

public class Util {

    private static String username;
    private static String password;
    private static String url;
    static final String PROPERTY_FILE = "test.properties";

    public static void lagPDF(String filename, String base64Dokument) {
        File file = new File(filename);

        try (FileOutputStream fos = new FileOutputStream(file);) {
            byte[] decoder = Base64.getDecoder().decode(base64Dokument);
            fos.write(decoder);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String lesFormidlingXML(String filePath) throws IOException {
        return Files.readString(Paths.get(filePath));
    }

    public static String henteBase64Dokument(Map<String, Object> requestBody) {

        lesProperties();

        Response response = given()
                .auth()
                .basic(username, password)
                .contentType(ContentType.JSON)
                .body(requestBody).
                        post(url);

        return response.jsonPath().get("document");
    }

    private static void lesProperties() {

        try (InputStream input = Util.class.getClassLoader().getResourceAsStream(PROPERTY_FILE)) {

            Properties prop = new Properties();

            // load a properties file
            prop.load(input);

            // get the property value and print it out
            username = prop.getProperty("ezbrev.username");
            password = prop.getProperty("ezbrev.password");
            url = prop.getProperty("ezbrev.url");

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
}
