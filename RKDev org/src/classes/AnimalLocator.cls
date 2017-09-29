public class AnimalLocator {
    
    public static string getAnimalNameById(integer animalId) {
        string name = '';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Object obj = results.get('animal'); 
            Map<String, Object> attr = (Map<String, Object>) obj;
            name = (string)attr.get('name');
        }
        return name;
    }


}