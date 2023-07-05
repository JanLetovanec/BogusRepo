@isTest 
private class MyRandomTestClass {
    @isTest
    static void validateRandom() {
       // Test that the trigger correctly updated the price
       System.assertEquals(4, MyRandomClass.randomNumber());
    }
}