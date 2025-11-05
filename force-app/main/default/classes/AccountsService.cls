public with sharing class AccountsService {
   @AuraEnabled
   public static List<Account> getAccounts(){
    try {
        List<Accout> accounts = [SELECT Id, Name FROM Account];
        return accounts;
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}