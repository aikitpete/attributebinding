package {

import mx.events.PropertyChangeEvent;

public class UppercaseModifier extends ModifierExample {

    public function UppercaseModifier(suc:InterfaceExample) {
        super(suc);
    }

    override public function update(val:PropertyChangeEvent):void {
        val.newValue = val.newValue.toString().toLocaleUpperCase();
        successor.update(val);
    }
}
}