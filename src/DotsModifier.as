package {

import mx.events.PropertyChangeEvent;

public class DotsModifier extends ModifierExample {

    public function DotsModifier(suc:InterfaceExample) {
        super(suc);
    }

    override public function update(val:PropertyChangeEvent):void {
        val.newValue = val.newValue + "...";
        successor.update(val);
    }
}
}