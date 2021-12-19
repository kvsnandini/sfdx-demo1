@isTest
private class WarehouseCalloutServiceTest {
    @isTest
    static void testWarehouseCalloutService(){
        Test.startTest();
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new WarehouseCalloutServiceMock());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock.
        WarehouseCalloutService.runWarehouseEquipmentSync();
        
        //System.assertEquals(2,[SELECT count() FROM Product2]);
        Test.stopTest();
    }
}