package {

import mx.controls.TextArea;
import mx.events.PropertyChangeEvent;

public class UIExample extends TextArea implements InterfaceExample {
    public function UIExample() {
        super();
    }

    public function setProperty(property:PropertyExample, main:Main):void {
        main.getProperty(property, this);
    }

    public function update(val:PropertyChangeEvent):void {
        this[val.property] = "" + val.newValue;
    }


}
}