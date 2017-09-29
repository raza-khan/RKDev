public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string searchString)
    {
        List<List<sObject>> results =[FIND :searchString IN ALL FIELDS 
                                      RETURNING Contact(id , firstname , lastname where (firstname like:searchString or lastname like:searchString) ),
                                     Lead (id, name  where name like: searchString)];
        return results;
        
    }

}