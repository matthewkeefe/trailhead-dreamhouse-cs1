public with sharing class ContactSearch {
    public ContactSearch() {

    }

    public static List<Contact> searchForContacts(string lastName, string postalCode) {
        String lastNamePattern = '%' + lastName + '%';
        String postalCodePattern = '%' + postalCode + '%';

        List<Contact> contacts = [
            SELECT Id, Name, FirstName, LastName, MailingPostalCode
            FROM Contact
            WHERE LastName LIKE :lastNamePattern
            AND MailingPostalCode LIKE :postalCodePattern
            LIMIT 10];
        return contacts;
    }
}