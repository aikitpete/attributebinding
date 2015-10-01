package {

import mx.events.PropertyChangeEvent;

public class ModelExample implements InterfaceExample {

    private var property:PropertyExample;

    public function ModelExample() {
    }

    public function addListener(property:PropertyExample, setter:Function):void {

        //this.a

    }

    public function setProperty(property:PropertyExample):void {
        this.property = property;
    }

    public function update(val:PropertyChangeEvent):void {

    }

}
}