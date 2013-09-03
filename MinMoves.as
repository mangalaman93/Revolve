package {
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.text.*;
	import flash.events.*;
	
	public class MinMoves extends Sprite {
		// constructor code
		private var smallBox:TextField = new TextField();

		public function MinMoves(min_moves) {
			// constructor code
			smallBox.width = 15;
			smallBox.height = 20;
			smallBox.x = 35;
			smallBox.y = 30;
			smallBox.autoSize = "center";
			smallBox.background = true;
			smallBox.backgroundColor = 0xFFFFFF;
			smallBox.autoSize = "none";
			
			var format:TextFormat = new TextFormat();
			format.font = "Showcard Gothic";
			format.size = 10;
			format.color = 0x990000;
			format.align = "center";		
			smallBox.defaultTextFormat = format;
			
			smallBox.text = min_moves.toString(10);
			addChild(smallBox);
		}
	}
}
