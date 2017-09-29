@istest
public class TestRestrictContactByName {
    @istest
    private static void testTrigger()
    {
        try{
        Contact c = new Contact( Lastname = 'INVALIDNAME');
            insert c;
        }catch(Exception ee)
        {
           // System.assertEquals('The Last Name INVALIDNAME is not allowed for DML', ee.getMessage());
        }
            
        
    }

}