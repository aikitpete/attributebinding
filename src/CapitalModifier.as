//@source http://help.adobe.com/en_US/ActionScript/3.0_ProgrammingAS3/WS5b3ccc516d4fbf351e63e3d118a9b90204-7eee.html

package {

import mx.events.PropertyChangeEvent;

public class CapitalModifier extends ModifierExample {

    public function CapitalModifier(suc:InterfaceExample) {
        super(suc);
    }

    override public function update(val:PropertyChangeEvent):void {
        val.newValue = normalizeTitle(val.newValue.toString());
        successor.update(val);
    }

    private function normalizeTitle(title:String):String
    {
        var words:Array = title.split(" ");
        var len:uint = words.length;
        for (var i:uint; i < len; i++)
        {
            words[i] = capitalizeFirstLetter(words[i]);
        }

        return words.join(" ");
    }

    /**
     * Capitalizes the first letter of a single word, unless it's one of
     * a set of words that are normally not capitalized in English.
     */
    private function capitalizeFirstLetter(word:String):String
    {
        switch (word)
        {
            case "and":
            case "the":
            case "in":
            case "an":
            case "or":
            case "at":
            case "of":
            case "a":
                // Don't do anything to these words.
                break;
            default:
                // For any other word, capitalize the first character.
                var firstLetter:String = word.substr(0, 1);
                firstLetter = firstLetter.toUpperCase();
                var otherLetters:String = word.substring(1);
                word = firstLetter + otherLetters;
        }
        return word;
    }
}
}