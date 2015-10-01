package {
public class Property {

    [Bindable]
    public var data:Array;

    [Bindable]
    public var val:String;

    public function Property(a:String, b:String) {
        data = new Array();
        data.push(a);
        data.push(b);

        val = a + b
    }
}
}