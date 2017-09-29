({
    clickCreateItem  : function(component, event, helper) {
        
        var validItem = component.find('campinglistform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        //If we pass error checking, do some real work
        if(validItem){
            // Create the new expense
            var newCampingItem = JSON.stringify(component.get("v.newItem"));
           console.log("newCampingItem: " + newCampingItem);
            // helper.createItem(component, newCampingItem);
            var theCampingItems = component.get("v.items");
            
            // Copy the expense to a new object
            // THIS IS A DISGUSTING, TEMPORARY HACK
           var paredItem = JSON.parse(newCampingItem);
            //console.log('newCampingItem:'+newCampingItem);
            
            theCampingItems.push(paredItem);
             console.log('theCampingItems:'+JSON.stringify(theCampingItems));
            component.set("v.items", theCampingItems);
            //component.set("v.newItem", "{'sobjectType': 'Camping_Item__c','Name':'', 'Price__c':0,'Quantity__c':0,'Packed__c':false}");
            
        }
        
    }
})