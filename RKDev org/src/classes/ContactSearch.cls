public class ContactSearch {
    public static List<Contact> searchForContacts(string lastName, string postalCode)
    {
        List<Contact> contacts = [Select id, name from contact where lastname like :lastname and MailingPostalCode =: postalCode];
        return contacts; 
    }

}