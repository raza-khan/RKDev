@isTest
public class AddPrimaryContactTest  {

    @testSetup 
    static void setup() {
        List<Account> accounts = new List<Account>();
        // add a parent account
        accounts.add(new Account(name='Parent'));
        // add 100 child accounts
        for (Integer i = 0; i < 100; i++) {
          Account acc=  new Account(
                name='Test Account'+i
            );
            acc.BillingState =( i<=49 )? 'CA': 'NY';
             accounts.add(acc);
            
        }
        insert accounts;
    }
    
    static testmethod void testQueueable() {
        // query for test data to pass to queueable class
       
       Contact c = new Contact(FirstName = 'test enqueue', LastName = 'trailhead');
        
        // startTest/stopTest block to force async processes to run
        Test.startTest();        
        System.enqueueJob(new AddPrimaryContact(c, 'CA'));
        System.enqueueJob(new AddPrimaryContact(c, 'NY'));
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        System.assertEquals(100, [select count() from Contact ]);
    }
    
}