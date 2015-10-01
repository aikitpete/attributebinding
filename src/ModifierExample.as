package {

import mx.events.PropertyChangeEvent;

//Abstract class

public class ModifierExample  implements InterfaceExample {

    protected var successor:InterfaceExample;

    public function ModifierExample(suc:InterfaceExample) {
        setSuccessor(suc);
    }

    public function setSuccessor(successor:InterfaceExample):void {
        this.successor = successor;
    }

    public function update(val:PropertyChangeEvent):void {
        successor.update(val);
    }


}
}