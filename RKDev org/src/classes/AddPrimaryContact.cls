public class AddPrimaryContact  implements Queueable {
    
    private Contact contact;
    private string  state;
    
    public AddPrimaryContact(Contact contact, string state) {
        this.contact = contact;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Contact> contacts = new List<Contact>();
        for (Account account : [Select id , name from account where billingState =: state]) {
            Contact newContact = contact.clone();
            newContact.AccountId = account.id;
            contacts.add(newContact);
            
        }
        insert contacts;
        
    }
}