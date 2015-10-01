package {

import mx.events.PropertyChangeEvent;

public class PropertyNameModifier extends ModifierExample {

    private var name:String;

    public function PropertyNameModifier(suc:InterfaceExample,name:String) {
        super(suc);
        this.name = name;
    }

    override public function update(val:PropertyChangeEvent):void {
        val.property = name;
        successor.update(val);
    }
}
}