global class DailyLeadProcessor implements Schedulable {

    global void execute(SchedulableContext ctx) {
        List<Lead> Leads = [SELECT Id, Name,LeadSource
            FROM Lead 
            WHERE LeadSource = null];
        
        if(leads.isEmpty()) return;
            
        for(Lead l: leads)
        {
            l.LeadSource = 'Dreamforce';
        }
        update leads;
    }
    
}