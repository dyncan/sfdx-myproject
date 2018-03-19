public with sharing class ContactsController {
   
   public ContactsController() {}
   
   @RemoteAction
    public static List<Contact> GetContacts(){
        List<Contact> contacts = [select id, Name from contact LIMIT 50];
        System.debug('mybranch!');
        return contacts;
    }
}
