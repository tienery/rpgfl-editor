package;

import cpp.Lib;

import wx.Frame;
import wx.App;

class Main
{

	private var _mainFrame:Frame;

	public function new()
	{
		_mainFrame = Frame.create(null, 0, "RPGFL Editor", {x: 0, y: 0}, {width: 800, height: 600});

		App.setTopWindow(_mainFrame);
		_mainFrame.shown = true;
	}
	
	static function main() 
	{
		App.boot(function() { new Main(); });
	}
	
}