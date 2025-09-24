public with sharing class AccountHandler {
    public AccountHandler() {

    }

    public static Account insertNewAccount(string accName) {
        Account newAcc = new Account(Name = accName);
        try {
            insert newAcc;
            return newAcc;
        } catch (DmlException e) {
            // Handle exception
            return null;
        }
    }
}