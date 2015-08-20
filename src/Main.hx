package;

import cpp.Lib;

import wx.Frame;
import wx.App;
import wx.Menu;
import wx.MenuBar;
import wx.MessageDialog;
import wx.StaticText;

class Main
{

	private var _mainFrame:Frame;
	private var _mainMenuBar:MenuBar;
	private var _fileMenu:Menu;
	private var _lblGeneric:StaticText;

	public function new()
	{
		_mainFrame = Frame.create(null, 0, "RPGFL Editor", {x: 0, y: 0}, {width: 800, height: 600});

		App.setTopWindow(_mainFrame);
		_mainFrame.shown = true;

		_mainMenuBar = new MenuBar();

		_fileMenu = new Menu("");
		_fileMenu.append(1, "Show Message");

		_lblGeneric = StaticText.create(_mainFrame, 2, "Hello, there.");

		_mainMenuBar.append(_fileMenu, "File");

		_mainFrame.handle(1, function(e)
		{
			var response = new MessageDialog(_mainFrame, "You clicked on Show Message.", "Message", MessageDialog.YES_NO);
			if (response.showModal() == 5103)
			{
				_lblGeneric.set_label("You clicked on yes.");
			}
		});

		_mainFrame.wxSetMenuBar(_mainMenuBar);
	}
	
	static function main() 
	{
		App.boot(function() { new Main(); });
	}
	
}