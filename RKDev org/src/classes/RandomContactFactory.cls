public class RandomContactFactory {
    Public static List<Contact> generateRandomContacts(integer noOfRecords , String lastname)
    {
        List<Contact> contacts =new List<Contact>();
        for(integer i=0; i< noOfRecords; i++)
        {
            contacts.add(new Contact(Firstname = 'Test '+i, Lastname = lastname ));
        }
         return contacts;
    }

}