public with sharing class ContactsController {
   
   public ContactsController() {}
   
   @RemoteAction
    public static List<Contact> getContacts(){
        List<Contact> contacts = [select id, Name from contact LIMIT 50];
        System.debug('this is a Master!');
        return contacts;
    }
} 
