package {
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.text.*;
	import flash.events.*;
	
	public class Moves extends Sprite {
		public var box:TextField = new TextField();
		private var number_of_moves:String = "00";

		public function Moves() {
			// constructor code
			box.width = 50;
			box.height = 50;
			//box.autoSize = "center";
			box.background = true;
			box.backgroundColor = 0x990000;
			box.autoSize = "none";
			
			var format:TextFormat = new TextFormat();
			format.font = "Showcard Gothic";
			format.size = 30;
			format.color = 0xFFFFFF;
			box.defaultTextFormat = format;
			
			box.text = number_of_moves;
			addChild(box);
		}
		
		public function setMoves(moves:Number):void {
			number_of_moves = moves.toString(10);
			if(moves < 10){
				number_of_moves = "0" + number_of_moves;
			}
			box.text = number_of_moves;
		}
	}
}
