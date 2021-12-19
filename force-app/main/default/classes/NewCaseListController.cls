public class NewCaseListController {

public List<Case> getNewCases() {
    List<Case> results = Database.query(
        'SELECT Id, caseNumber from case where Status = \'New\'');
    return results;
}
}