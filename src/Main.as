package {

import mx.binding.utils.*;
import mx.containers.Canvas;
import mx.controls.TextArea;

public class Main  extends Canvas {

    [Bindable]
    private var textField:TextArea;
    [Bindable]
    private var textField2:TextArea;

    private var property1:PropertyExample;
    private var model:ModelExample;
    private var property2:PropertyExample;
    private var ui:UIExample;

    public function Main() {

        createField();

        property1 = new PropertyExample();
        property1["name"] = "ext";
        property1["value"] = "Test unsuccessful";
        property1["modifiers"] = "";
        //model = new ModelExample();
        //model.setProperty(property1);

        property2 = new PropertyExample();
        property2["name"] = "text";
        property2["value"] = "Test property";
        property2["modifiers"] = "lowercase:uppercase";
        ui = new UIExample();
        ui.setProperty(property2, this);
        addChild(ui);

        property1["value"] = "Test1 successful";
        property1["value"] = "Test2 successful";

        //BindingUtils.bindProperty(property1, "value", textField, "text");

    }

    public function getProperty(property:PropertyExample, setter:InterfaceExample):void {
        property1.addListener(property, setter);
    }

    public function createField():void {
        textField = new TextArea();
        textField.height = 50;
        textField.width = 150;
        textField.x = 50;
        textField.y = 250;

        textField.text = "Hello Peter";
        addChild(textField);

        textField2 = new TextArea();
        textField2.height = 50;
        textField2.width = 150;
        textField2.x = 50;
        textField2.y = 500;

        textField2.text = "Hello Martin";

        addChild(textField2);
    }
}
}