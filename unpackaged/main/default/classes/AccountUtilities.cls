public class AccountUtilities {
   public static void checkUpdateAccessForPriority() {
       if (!Schema.sObjectType.Account.fields.CustomerPriority__c.isUpdateable()) {
           throw new System.NoAccessException();
       }
   }
    
    public static String stringsToCommaSeparatedString(List<String> strings) {
        return String.join(strings, ', ');
    }
}