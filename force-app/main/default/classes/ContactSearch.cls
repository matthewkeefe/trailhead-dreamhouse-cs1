/**
 * @class ContactSearch
 * @description This class provides functionality to search for Contact records within Salesforce.
 *              It enforces sharing rules to ensure data security and respects user access permissions.
 * @author Matthew Keefe
 * @date 2025-09-24
 */
public with sharing class ContactSearch {
    /**
     * Searches for contacts based on the provided last name and postal code.
     *
     * @param lastName   The last name of the contact to search for.
     * @param postalCode The postal code of the contact to search for.
     * @return           A list of Contact records matching the search criteria.
     */
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