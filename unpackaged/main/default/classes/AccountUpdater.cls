public without sharing class AccountUpdater {
   public static void updateBigAcounts() {
       AccountUtilities.checkUpdateAccessForPriority();
       List<Account> accounts = [SELECT Id, Name FROM Account WHERE NumberOfEmployees > 1000]; // NOPMD - access is checked in checkUpdateAccessForPriority
       
       for (Account account : accounts) {
           account.CustomerPriority__c = 'high';
       }
       
       update accounts; // NOPMD - Access is checked in checkUpdateAccessForPriority
	// some comment
   }
}