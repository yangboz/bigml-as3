
package com.godpaper.as3.BigML.mvc.controller
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.mvc.events.BigMLAppEvent;
	import com.godpaper.as3.BigML.mvc.service.IBigMLService;
	
	import robotlegs.bender.bundles.mvcs.Command;
	
	
	/**
	 * Neo4jCommand.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:57:22 PM
	 * @history 12/30/13,
	 */ 
	public class BigMLCommand extends Command
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]
		public var neo4jService:IBigMLService;
		//
		[Inject]
		public var neo4jAppEvent:BigMLAppEvent;
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
		public function BigMLCommand()
		{
			super();
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function execute():void
		{
			neo4jService.callAPI(neo4jAppEvent.param);
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