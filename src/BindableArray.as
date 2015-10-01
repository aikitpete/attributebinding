package
{
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.utils.flash_proxy;

import mx.collections.*;
import mx.events.PropertyChangeEvent;

use namespace flash_proxy;

dynamic public class BindableArray extends ArrayCollection implements IEventDispatcher
{

    protected var strings:Object;
    protected var eventDispatcher:EventDispatcher;

    public function BindableArray()
    {
        super();
        eventDispatcher = new EventDispatcher(this);
    }

    public function add(name:String):String
    {
        dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE, false, false, null, null, null, null));
        return "AHOJ"//strings[name] || name;
    }

    /*
     public function getProperty(name:String):String
     {
     return "AHOJ"//strings[name] || name;
     }

     public function setProperty(name:String, value:String):void
     {
     var oldValue:* = strings[name];
     strings[name] = value;
     var kind:String = PropertyChangeEventKind.UPDATE;
     dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE, false, false, kind, name, oldValue, value, this));
     }
     */

    override public function hasEventListener(type:String):Boolean
    {
        return eventDispatcher.hasEventListener(type);
    }

    override public function willTrigger(type:String):Boolean
    {
        return eventDispatcher.willTrigger(type);
    }

    override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0.0, useWeakReference:Boolean = false):void
    {
        eventDispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
    }

    override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void
    {
        eventDispatcher.removeEventListener(type, listener, useCapture);
    }

    override public function dispatchEvent(event:Event):Boolean
    {
        return eventDispatcher.dispatchEvent(event);
    }
}
}