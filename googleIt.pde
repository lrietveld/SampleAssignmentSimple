 import java.io.*;
 //import com.google.Gson;
//import google-api-client-1.22.0.jar;
import at.mukprojects.imageloader.*;
import at.mukprojects.imageloader.google.*;
import at.mukprojects.imageloader.image.*;
//String apiKey = "AIzaSyBguQ5zgcMgu9tyK-dyftZo0vvVNiCzrq0";

//ImageLoader loader;
//ImageList list;
//Image img;

class googleIt{
  
  
  
 public googleIt(){
     
  }
  public void getAPI(){
    
   
    
    
    /*String APPLICATION_NAME = "PlusSample";
java.io.File DATA_STORE_DIR =
      new java.io.File(System.getProperty("user.home"), ".store/plus_sample");
FileDataStoreFactory dataStoreFactory;

// Set up the HTTP transport and JSON factory
HttpTransport httpTransport = GoogleNetHttpTransport.newTrustedTransport();
JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();

// Load client secrets
GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(jsonFactory,
    new InputStreamReader(PlusSample.class.getResourceAsStream("/client_secrets.json")));

// Set up authorization code flow
GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
    httpTransport, jsonFactory, clientSecrets,
    Collections.singleton(PlusScopes.PLUS_ME)).setDataStoreFactory(dataStoreFactory)
    .build();

// Authorize
Credential credential =
    new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");

// Set up the main Google+ class
Plus plus = new Plus.Builder(httpTransport, jsonFactory, credential)
    .setApplicationName(APPLICATION_NAME)
    .build();

// Make a request to access your profile and display it to console
Person profile = plus.people().get("me").execute();
System.out.println("ID: " + profile.getId());
System.out.println("Name: " + profile.getDisplayName());
System.out.println("Image URL: " + profile.getImage().getUrl());
System.out.println("Profile URL: " + profile.getUrl());
*/

/*<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBguQ5zgcMgu9tyK-dyftZo0vvVNiCzrq0&callback=initMap";
type="text/javascript"></script>;
  
  <!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
     // Always set the map height explicitly to define the size of the div
       // element that contains the map. 
      #map {
        height: 100%;
      }
      //Optional: Makes the sample page fill the window. 
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"
    async defer></script>
  </body>
</html> 
*/

  }
  
  
}