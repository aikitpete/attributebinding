//@TODO remove bindable
package {

import mx.collections.ArrayCollection;

[Bindable]
public class PropertyObject { //extends EventDispatcher {

    public var name:String;
    public var value:String;
    public var modifiers:ArrayObject;

    public function PropertyObject(name:String, value:String, modifiers:ArrayCollection) {
        //super();
        this.name = name;
        this.value = value;
        this.modifiers = new ArrayObject(modifiers);
    }

    public function setName(name:String):void {
        this.name = name;
    }

    public function setValue(value:String):void {
        this.value = value;
    }


    public function getName():String {
        return this.name;
    }

    public function getValue():String {
        return this.value;
    }

    public function addModifier(modifier:String):void {
        this.modifiers.addItem(modifier);
    }

    public function removeModifier():void {

    }

    public function getModifiers():ArrayObject {
        return modifiers;
    }

    public function setModifiers(modifiers:ArrayObject):void {
        this.modifiers = modifiers;
    }

}
}