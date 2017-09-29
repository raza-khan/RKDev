public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accountIds)
    {
        List<Account> accountstoUpdate = new List<Account>();
        
        for(AggregateResult res: [Select count(id) NoOfContacts , AccountId from contact where AccountId in:accountIds GROUP BY AccountId ])
        {
            accountstoUpdate.add(new Account(id=(Id)res.get('accountId'),Number_of_Contacts__c=(integer) res.get('NoOfContacts')));
        }
        update accountstoUpdate;
    }

}