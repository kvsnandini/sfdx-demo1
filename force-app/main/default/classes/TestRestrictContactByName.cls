@isTest
public class TestRestrictContactByName {
    public static testmethod  void contacttest(){
    contact c =new contact ();  
    c.LastName='INVALIDNAME';    
    insert c;
}
}