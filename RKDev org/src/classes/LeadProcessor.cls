global class LeadProcessor implements 
    Database.Batchable<sObject>{


    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT FirstName, Id, Name, Title, Company, LeadSource FROM Lead'
        );
    }

    global void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
        List<Lead> LeadsToUpdate = new List<Lead>();
        for (Lead lead : scope) {
            lead.LeadSource = 'Dreamforce';
            LeadsToUpdate.add(lead);
        }
        update LeadsToUpdate;
    }    

    global void finish(Database.BatchableContext bc){
     
    }    

}