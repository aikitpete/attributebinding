package
{
import flash.events.IEventDispatcher;
import flash.utils.flash_proxy;

import mx.collections.*;

use namespace flash_proxy;

dynamic public class ArrayBindable extends ArrayCollection implements IEventDispatcher
{
    public function ArrayBindable()
    {
        super();
    }

    public function setItem(val:String, i:Number):void {
        this.setItemAt(val, i);
        this.itemUpdated(this.getItemAt(i));
    }

}
}