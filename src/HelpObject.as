package {

import mx.collections.ArrayCollection;

public class HelpObject extends Object {
    [Bindable("collectionChange")]
    public var ac:ArrayCollection

    public function HelpObject() {
        super();
    }

    public function setWatch():void {

       p