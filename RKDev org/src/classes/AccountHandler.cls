public class AccountHandler {
    public static Account insertNewAccount(string  accountName)
    {
        Account newAccount = null;
        try{
            newAccount = new Account(name = accountName);
            insert newAccount;
        }catch(Exception e)
        { 
            system.debug('exception:'+ e.getMessage());
             return null;
        }
        return newAccount;
    }

}