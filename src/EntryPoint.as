package {
import mx.core.*;

public class EntryPoint {
    public static function main():void {

        var client:Main = new Main();

        //var client:Canvas = new Canvas();

        //client. = "I'm a Flex control created in ActionScript";

        //var button:Button = new Button();
        //button.label = "I'm a Button!";
        //client.addChild(button)

        var mxmlApp:Application = Application(Application.application);
        mxmlApp.addChild(client);
    }
}
}