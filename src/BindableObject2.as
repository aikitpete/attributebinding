package
{
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.utils.flash_proxy;

import mx.events.PropertyChangeEvent;
import mx.events.PropertyChangeEventKind;

use namespace flash_proxy;


dynamic public class BindableObject2 implements IEventDispatcher
{

    //protected var strings:Object;

    protected var name:String;
    public var value:String;

    protected var eventDispatcher:EventDispatcher;

    public function BindableObject2(name:String, value:String)
    {
        //strings = {};
        this.name = name;
        this.value = value;
        eventDispatcher = new EventDispatcher(this);
    }

    public function getProperty(name:String):String
    {
        return "AHOJ"//strings[name] || name;
    }

    public function getValue(name:String):String
    {
        return value;
    }

    public function setValue(name:String, value:String):void
    {
        var oldValue:String = this.value;
        this.value = value;
        var kind:String = PropertyChangeEventKind.UPDATE;
        dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE, false, false, kind, name, oldValue, value, this));
    }

    public function hasEventListener(type:String):Boolean
    {
        return eventDispatcher.hasEventListener(type);
    }

    public function willTrigger(type:String):Boolean
    {
        return eventDispatcher.willTrigger(type);
    }

    public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0.0, useWeakReference:Boolean = false):void
    {
        eventDispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
    }

    public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void
    {
        eventDispatcher.removeEventListener(type, listener, useCapture);
    }

    public function dispatchEvent(event:Event):Boolean
    {
        return eventDispatcher.dispatchEvent(event);
    }

}
}