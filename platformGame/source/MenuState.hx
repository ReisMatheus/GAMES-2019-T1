package;

import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxG;
import flixel.ui.FlxButton;
import flixel.FlxSprite;

class MenuState extends FlxState{
    var _background:FlxSprite;
    var _title:FlxSprite;
    var _playButton:FlxButton;

    override public function create():Void{
        //Background cloud sprite;
        _background = new FlxSprite();
        _background.loadGraphic("assets/images/gameBackground.png");
        //_background.scale.set(1, 1);
        add(_background);
        //Game name (Platform Game) on Menu state;
        _title = new FlxSprite();
        _title.loadGraphic("asses/images/title.png");
        add(_title);
        //Button with string "Play", leads to PlayState;
        _playButton  = new FlxButton(FlxG.width - 270, FlxG.height - 100,null, null);
        _playButton.loadGraphic("assets/images/buttons/playButton.png");
        _playButton.scale.set(6, 6);
        add(_playButton);
        super.create();
    }
}