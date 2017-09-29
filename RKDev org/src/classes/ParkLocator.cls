public class ParkLocator {
    
    public static string[] country(string countryName) {
        ParkService.ParksImplPort calculator = 
            new ParkService.ParksImplPort();
        return calculator.byCountry(countryName);
    }

}