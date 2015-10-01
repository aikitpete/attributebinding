//@todo remove listener
package {

import mx.events.*;

[Bindable]
public class PropertyExample extends ExtendedObject {

    public var name:String;
    public var value:String;
    public var modifiers:String;

    public function PropertyExample() {
        super();

    }


    public function addListener(property:PropertyExample, setter:InterfaceExample):void {

        var modifier:InterfaceExample = setter;
        if (this.name!=property.name) {
            modifier = new PropertyNameModifier(modifier, property.name);
        }
        if (property.modifiers.length != 0) {
            var mod:Array = property.modifiers.split(":");
            for (var i:Number = 0; i < mod.length; i++) {
                switch (mod[i].toString()) {
                    case "dots":
                        modifier = new DotsModifier(modifier);
                        break;
                    case "uppercase":
                        modifier = new UppercaseModifier(modifier);
                        break;
                    case "lowercase":
                        modifier = new LowercaseModifier(modifier);
                        break;
                    case "capital":
                        modifier = new CapitalModifier(modifier);
                        break;
                }
            }

        }
        this.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE, modifier.update);

    }

    public function removeListener(property:PropertyExample, setter:InterfaceExample) {
        this.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE, setter.update);
    }

    public function dispatch(name:String) {
        
    }


    public function update(val:String):void {
        this.value = val;
    }


}
}