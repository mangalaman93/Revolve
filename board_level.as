package {
	import flash.display.MovieClip;
	
	public class board_level extends MovieClip {
		public function board_level(board:Array, hole:Array) {			
			//The main board
			var b:boardC = new boardC();
			b.x = 0;
			b.y = 0;
			addChild(b);
			
			//The hole
			var h:holeC = new holeC();
			h.x = hole[0][0] - 275;
			h.y = hole[0][1] - 200;
			addChild(h);
			
			//The horizontal bars
			for(var i:Number=0; i<6; i++){
				for(var j:Number=1; j<6; j++){
					if(board[0][i][j]){
						var hb:hz_bar = new hz_bar();
						hb.x = 125 + 50*i - 275;
						hb.y = 50*(j+1) - 5 - 200;
						addChild(hb);
					}
				}
			}
			
			//The vertical bars
			for(i=0; i<6; i++){
				for(j=1; j<6; j++){
					if(board[1][i][j]){
						var vb:ver_bar = new ver_bar();
						vb.x = 125 + 50*j - 5 - 275;
						vb.y = 50*(i+1) - 200;
						addChild(vb);
					}
				}
			}
		}
	}
	
}
