({
    handleClick: function(component, event, helper) {
        var btnClicked = event.getSource();         // the button
        var btnMessage = btnClicked.get("v.label"); // the button's label
        component.set("v.message", btnMessage);     // update our message
    },
    handleClick2: function(component, event, helper)
    {
        var msg= event.getSource().get("v.label");
        component.set("v.message", lebel);
        
        
    },
    handleClick3: function( component, event, handler)
    {
     var btlabel= event.getSource().get("v.label");
        component.set("v.meesage", btnlabel);
    }
})