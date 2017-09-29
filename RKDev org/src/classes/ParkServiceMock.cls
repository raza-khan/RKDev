@isTest
global class ParkServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        ParkService.byCountryResponse response_x = 
            new  ParkService.byCountryResponse();
               string[] parks = new string[]{'Ayub Park', 'Jinnah Park', 'F9 Park'};
        response_x.return_x = parks;
        // end
        response.put('response_x', response_x); 
   }
}