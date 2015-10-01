package {

import mx.binding.utils.*;
import mx.collections.ArrayCollection;
import mx.containers.Canvas;
import mx.controls.TextArea;

//import mx.events.*;

public class Binding extends Canvas {

    [Bindable]
    private var textField:TextArea;
    [Bindable]
    private var textField2:TextArea;

    private var textField3:TextArea;
    private var textField4:TextArea;

    private var textField5:TextArea;
    private var textField6:TextArea;

    private var textField7:TextArea;
    private var textField8:TextArea;

    [Bindable]
    private var p1:Property;
    [Bindable]
    private var p2:Property;

    [Bindable]
    public var arr:BindableObject2;

    private var prop:Property;

    [Bindable]
    private var ac:ArrayCollection;

    [Bindable]
    private var po:PropertyObject;

    [Bindable("collectionChange")]
    private var ho:HelpObject;

    [Bindable]
    public var eo:ExtendedObject;

    public function Binding() {

        createField();

        var uu:String = "aaa";
        trace(uu.indexOf(":"));


        arr = new BindableObject2("Peter", "Gerhat");
        //arr.setProperty();


        p1 = new Property("a", "b");
        p2 = new Property("aa", "bb");

        prop = new Property("xo", "ox");

        //var watcher:ChangeWatcher = BindingUtils.bindProperty(p1,"data",getProperty(),"data");

        BindingUtils.bindProperty(textField, "text", textField2, "text");

        BindingUtils.bindProperty(prop, "val", textField3, "text");
        BindingUtils.bindProperty(textField4, "text", prop, "val");


        ho = new HelpObject();

        ho.ac = new ArrayCollection();
        ho.ac.addItem(new ArrayCollection(["Honza"]));
        ho.ac.addItem(new PropertyObject("Name", "Value", null));
        //ac.addItem(new BindableObject("JAN","FRANTA"));


        //BindingUtils.bindProperty(ac,"0",textField6,"text");
        var watcher:ChangeWatcher = BindingUtils.bindSetter(setterText, ho.ac[1], "value");
        ho.ac[1]["value"] = "CHANGE";
        ho.ac[1].addModifier("DDD");
        ho.ac[1]["value"] = "EDIT";
        ///po = new PropertyObject("Name","Value");
        ///var watcher:ChangeWatcher = BindingUtils.bindSetter(setterText, po, "value");
        ///po.value = "CHANGE";

        //ho.watch("ho.ac",ho.setWatch());

        //ac.setItem("Peter",0);
        ho.ac.addItem("Jan");
        ho.ac.getItemAt(0).addItem("Honzza");
        ho.ac.refresh();
        ho.ac.getItemAt(0).refresh();
        ho.ac.removeItemAt(0);

        //ac.add("GGHH");
        ////ac.getItemAt(0).addItem("SUSLU");
        ////textField6.text = textField5.hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE).toString();

        //ac.getItemAt(0).value = 55;


        //
        //BindingUtils.bindProperty(arr, "Name",textField5,"text");
        //BindingUtils.bindProperty(textField6,"text",arr,"getPoperty(\"Peter\")");
        //

        //textField5.text = arr.getItemAt(0).toString();
        //textField6.text = arr.getItemAt(0).toString();

        //arr.setItemAt({Name:"Gerhat"},0);
        //arr.getItemAt(2);
        //textField5.text = arr.getItemAt(0).Name;

        eo = new ExtendedObject();
        eo["Name"] = "eter";

        //textField7.text = eo["Name"];
        BindingUtils.bindProperty(eo, "Name", textField7, "text");
        BindingUtils.bindProperty(textField8, "text", eo, "Name");


        prop.val = "OKOKOKOKOKOKOKO"

        //arr = ["hohohohoh","jojojojo","cjcjcjjcjc"];

        /*
         trace(p1.data[0]);
         trace(p2.data[0]);

         p2.data[0] = "faltus";

         trace(p1.data[0]);
         trace(p2.data[0]);
         */

        //var watcher:ChangeWatcher = BindingUtils.bindProperty(textField,"text",textField2,"text");
        //watcher.setHandler({});
        //trace(watcher.isWatching());

        //textField.text = "Hello HHHH";
        //textField2.text = "Hello CCCC"+textField2.text;

    }

    public function setterText(property:*):void {
        textField5.text = textField5.text + "ASS";//+property;
    }

    public function getProperty():Property {
        return p2;
    }

    public function set Prop(t:String):void {
        prop.val = t;
    }

    public function get Prop():String {
        return prop.val;
    }

    public function createField():void {
        textField = new TextArea();
        textField.height = 50;
        textField.width = 150;
        textField.x = 0;
        textField.y = 0;

        textField.text = "Hello Peter";
        addChild(textField);

        textField2 = new TextArea();
        textField2.height = 50;
        textField2.width = 150;
        textField2.x = 0;
        textField2.y = 80;

        textField2.text = "Hello Martin";

        addChild(textField2);

        textField3 = new TextArea();
        textField3.height = 50;
        textField3.width = 150;
        textField3.x = 10;
        textField3.y = 160;

        textField3.text = "Hola";
        addChild(textField3);

        textField4 = new TextArea();
        textField4.height = 50;
        textField4.width = 150;
        textField4.x = 10;
        textField4.y = 240;

        textField4.text = "Halo";

        addChild(textField4);

        textField5 = new TextArea();
        textField5.height = 50;
        textField5.width = 150;
        textField5.x = 30;
        textField5.y = 320;

        textField5.text = "Hockey";

        addChild(textField5);

        textField6 = new TextArea();
        textField6.height = 50;
        textField6.width = 150;
        textField6.x = 30;
        textField6.y = 400;

        textField6.text = "Football";

        addChild(textField6);

        textField7 = new TextArea();
        textField7.height = 50;
        textField7.width = 150;
        textField7.x = 60;
        textField7.y = 480;

        textField7.text = "Apple";

        addChild(textField7);

        textField8 = new TextArea();
        textField8.height = 50;
        textField8.width = 150;
        textField8.x = 60;
        textField8.y = 560;

        textField8.text = "Pear";

        addChild(textField8);


    }

}


}