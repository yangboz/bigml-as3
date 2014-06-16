
package com.godpaper.as3.BigML.mvc.events
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.mvc.consts.BigMLConstants;
	
	import flash.events.Event;
	
	
	/**
	 * Neo4jAppEvent.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:35:06 PM
	 * @history 12/30/13,
	 */ 
	public class BigMLAppEvent extends Event
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _param:BigMLConstants;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		public static const API_CALL:String = "Neo4j_API_CALL";
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		public function get param():BigMLConstants
		{
			return _param;
		}
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
		public function BigMLAppEvent(type:String, param:BigMLConstants, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			//
			this._param = param;
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function clone():Event
		{
			return new BigMLAppEvent(type, param, bubbles, cancelable);
		}
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
	}
	
}