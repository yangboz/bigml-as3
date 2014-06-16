
package
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.mvc.BigMLConfig;
	import com.godpaper.as3.BigML.mvc.view.MainView;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	
	/**
	 * BigMLAS3.as class. -It is a APIs(Source/Dataset/Model/Prediction...) operation testing stub.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 10:58:20 AM
	 * @history 06/16/14,
	 */ 
	public class BigMLAS3 extends Sprite
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _mainView:MainView;
		private var _context:IContext;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function BigMLAS3()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			//
			this._context = new Context()
				.install(MVCSBundle)
				.configure(BigMLConfig,new ContextView(this));
			//
			addEventListener(Event.ADDED_TO_STAGE, _onApplication_AddedToStageHandler);
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
		private function _onApplication_AddedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, _onApplication_AddedToStageHandler);
			
			//
			this._mainView = new MainView();
			this.addChild(this._mainView);
		}
	}
	
}