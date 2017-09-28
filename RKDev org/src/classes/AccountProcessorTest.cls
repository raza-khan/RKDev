@istest
public class AccountProcessorTest {
    
    @istest
    private static void coverFutureMethod()
    {
        Account a= new Account(name ='test account');
        insert a;
        Contact c = new Contact(lastname ='test contact', accountId = a.Id);
        insert c;
        test.startTest();
        AccountProcessor.countContacts(new List<Id>{a.id});
        test.stopTest();
    }
    
    

}