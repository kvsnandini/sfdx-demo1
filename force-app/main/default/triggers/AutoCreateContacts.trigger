trigger AutoCreateContacts on Account(after insert){

    system.debug('Trigger Invoked');
    system.debug(Trigger.New.size());
    system.debug(Trigger.New[Trigger.New.size()-1]);
    // for each Account in Trigger.New create a Contact with Firstname and LastName populated.
    // if the Account Name equals = "NOLA" create an instance of Contact without LastName
    List<Contact> cntLst = New List<Contact>();
    for(Account acc :Trigger.New){
        cntLst.add(acc.Name == 'NOLA' ? New Contact(FirstName=acc.Name.substring(0,3), AccountId=acc.Id) : New Contact(AccountId=acc.Id,   FirstName=acc.Name.substring(0,5), LastName=acc.Name.substring(acc.Name.length()-5,acc.Name.length())));
    }
    try{
        Database.insert(cntlst, False);
    }
    catch(Exception e){
        system.debug('*** ERROR :: ' + e.getMessage() + ' ***');
        system.debug('*** Size of the Errored Out Contact List ' + cntLst.size() + ' ***');
    }
}