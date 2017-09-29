@istest
public class TestVerifyDate {
    
    @istest
    private static void verifyDateTest()
    {
        date d= system.today();
        date d2 = system.today().addmonths(1);
        Date returnedDate = VerifyDate.CheckDates(d, d2);
        d2 = system.today().addDays(1);
        returnedDate = VerifyDate.CheckDates(d, d2);
    }

}