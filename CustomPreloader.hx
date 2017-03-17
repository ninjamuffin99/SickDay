package ;
 
import flixel.system.FlxBasePreloader;
import flash.display.*;
import flash.text.*;
import flash.Lib;
import openfl.display.Sprite;
import flash.text.Font;
import flash.text.TextField;
import flash.text.TextFormat;
import com.newgrounds.*;
import com.newgrounds.components.*;
 
class CustomPreloader extends FlxBasePreloader
{
 
    public function new(MinDisplayTime:Float=5, ?AllowedURLs:Array<String>) 
    {
        super(MinDisplayTime, AllowedURLs);
        
    }
    
    override function create():Void 
    {
        this._width = Lib.current.stage.stageWidth;
        this._height = Lib.current.stage.stageHeight;
        
        var ratio:Float = this._width / 800; //This allows us to scale assets depending on the size of the screen.
        
		API.connect(root, "API ID", "encryptionkey");
		
		if (API.isNewgrounds)
		{
			var ad:FlashAd = new FlashAd();
			ad.x = (_width / 2) - (ad.width/2);
			ad.y = 0;
			addChild(ad);
			minDisplayTime = 8;
		}
        
        super.create();
    }
     
}