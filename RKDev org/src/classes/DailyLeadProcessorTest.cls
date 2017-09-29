@istest
public class DailyLeadProcessorTest {

    // Dummy CRON expression: midnight on March 15.
    // Because this is a test, job executes
    // immediately after Test.stopTest().
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
     @testSetup 
    static void setup() {
        List<Lead> Leads = new List<Lead>();
      
        for (Integer i=0;i<200;i++) {
            Leads.add(new Lead(Lastname='Lead '+i, 
                Company='Test '+i , LeadSource=null));
        }
        insert Leads;
        
    }

    static testmethod void testScheduledJob() {

      
        Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP, 
            new DailyLeadProcessor());         
      
      
        // Stopping the test will run the job synchronously
        Test.stopTest();
        
        
        System.assertEquals(200, [select count() from Lead where LeadSource = 'Dreamforce']);
    }
}