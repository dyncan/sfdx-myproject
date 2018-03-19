public with sharing class ContactsController {
   
   public ContactsController() {}
   
   @RemoteAction
    public static List<Contact> getContacts(){
        List<Contact> contacts = [SELECT Id, Name FROM contact LIMIT 50];
        return contacts;
    }
}