@IsTest
private class AccountManagerTest {

    @isTest static void testGetCaseById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://na1.salesforce.com/services/apexrest/Accounts/'+recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.name);
    }

    

   

    // Helper method
    static Id createTestRecord() {
        // Create test record
        Account account = new Account(
            Name='Test record');
        insert account;
        Contact contact = new Contact(LastName = 'test contact', accountId = account.id);
        insert contact;
        
        return account.Id;
    }          

}