public with sharing class ContactAndLeadSearch {
    public ContactAndLeadSearch() { }

    public static List<List<SObject>> searchContactsAndLeads(string searchTerm) {
        String searchTermPattern = '%' + searchTerm + '%';
        List<List<sObject>> searchList = [
            FIND :searchTermPattern IN Name FIELDS
            RETURNING Lead(Name),Contact(FirstName,LastName,Department)
        ];
        return searchList;
    }
}