@istest
public class AnimalLocatorTest {
    
     @isTest static  void testGetCallout() {
        // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    string aninmalName = AnimalLocator.getAnimalNameById(1);
    
    System.assertNotEquals(null, aninmalName);  
    } 
    

}