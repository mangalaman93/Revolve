package {
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.text.*;
	import flash.events.*;
	
	public class TextLevelNumber extends Sprite {
		private var myTextBox:TextField = new TextField();
		private var myText:String = "";
		private var levelMAX:Number;
		
		public function TextLevelNumber(level:Number, level_max:Number) {
			levelMAX = level_max;
			
			myTextBox.width = 50;
			myTextBox.height = 60;
			myTextBox.x = 240;
			myTextBox.y = 100;
			myTextBox.autoSize = "center";
			myTextBox.background = true;
			myTextBox.backgroundColor = 0x990000;
			myTextBox.type = TextFieldType.INPUT;
			myTextBox.autoSize = "none";
			
			var format:TextFormat = new TextFormat();
			format.font = "Showcard Gothic";
			format.size = 40;
			format.color = 0xFFFFFF;
			format.align = "center";
			
			myTextBox.defaultTextFormat = format;
			if(level < 9){
				myText += "0" + level;
			} else {
				myText += level;
			}
			
			myTextBox.restrict = "0-9";
			myTextBox.maxChars = 2;
			myTextBox.addEventListener(Event.CHANGE, textInputCapture);
			myTextBox.text = myText;
			addChild(myTextBox);
		}
		
		private function textInputCapture(event:Event):void {
			var level:int = getLevel();
			if(level > levelMAX || level < 1){
				level /= 10;
				myTextBox.text = level.toString(10);
			}
		}
		
		public function getLevel():Number {
			var level = Number(myTextBox.getRawText());
			return level;
		}
	}
	
}
