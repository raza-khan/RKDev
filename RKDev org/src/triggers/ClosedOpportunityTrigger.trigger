trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> tasksToInsert = new List<Task>();
    
    for(Opportunity opp: trigger.new)
    {
        if(opp.stagename == 'Closed Won')
        {
            Task t = new Task();
            t.subject  = 'Follow Up Test Task';
            t.WhatId = opp.id;
            tasksToInsert.add(t);
        }
    }
    if(!tasksToInsert.isempty())
    {
        insert tasksToInsert;
    }
        

}