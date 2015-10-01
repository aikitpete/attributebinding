package {

import mx.events.PropertyChangeEvent;

public class LowercaseModifier extends ModifierExample {

    public function LowercaseModifier(suc:InterfaceExample) {
        super(suc);
    }

    override public function update(val:PropertyChangeEvent):void {
        val.newValue = val.newValue.toString().toLocaleLowerCase();
        successor.update(val);
    }
}
}