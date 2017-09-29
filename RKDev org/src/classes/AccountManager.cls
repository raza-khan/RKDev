@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
    
     @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        List<string> params =  request.requestURI.split('/');
        String accountId = params.get(params.size() - 2);
        Account result =  [SELECT id, name ,(Select id, name from contacts)
                        FROM Account
                        WHERE Id = :accountId];
        return result;
    }

}