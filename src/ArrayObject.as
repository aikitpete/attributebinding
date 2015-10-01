package {

import flash.events.EventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.*;

[Bindable]
public class ArrayObject extends EventDispatcher {

    public var data:ArrayCollection;

    public function ArrayObject(data:ArrayCollection) {
        super();
        this.data = data ? data : new ArrayCollection();
    }

    public function addItem(item:String):void {
        //data.addItem(item);
        //this.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));

        var oldValue:* = null;
        data.addItem(item);
        var kind:String = PropertyChangeEventKind.UPDATE;
        dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE, false, false, kind));

    }

}
}