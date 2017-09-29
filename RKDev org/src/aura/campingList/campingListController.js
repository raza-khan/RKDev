({
    /*clickCreateItem  : function(component, event, helper) {
        
        var validItem = component.find('campinglistform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
       // If we pass error checking, do some real work
        if(validItem){
            // Create the new expense
            var newCampingItem = component.get("v.newItem");
            console.log("Create expense: " + JSON.stringify(newCampingItem));
            // helper.createItem(component, newCampingItem);
            var theCampingItems = component.get("v.items");
            
            // Copy the expense to a new object
            // THIS IS A DISGUSTING, TEMPORARY HACK
            newCampingItem = JSON.parse(JSON.stringify(newCampingItem));
            
            theCampingItems.push(theCampingItem);
            component.set("v.items", theCampingItems);
            newCampingItem ="{'sobjectType:''Camping_Item__c'}";
            component.set("v.newItem",newCampingItem);
        }
        
    }*/
})