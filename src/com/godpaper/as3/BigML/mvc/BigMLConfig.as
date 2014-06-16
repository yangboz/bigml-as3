
package com.godpaper.as3.BigML.mvc
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.mvc.controller.BigMLCommand;
	import com.godpaper.as3.BigML.mvc.events.BigMLAppEvent;
	import com.godpaper.as3.BigML.mvc.model.BigMLModel;
	import com.godpaper.as3.BigML.mvc.service.IBigMLService;
	import com.godpaper.as3.BigML.mvc.service.BigMLService;
	import com.godpaper.as3.BigML.mvc.view.MainView;
	import com.godpaper.as3.BigML.mvc.view.MainViewMediator;
	
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	
	/**
	 * Neo4jConfig.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:30:52 PM
	 * @history 12/30/13,
	 */ 
	public class BigMLConfig implements IConfig
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:IEventCommandMap;
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
		public function BigMLConfig()
		{
			//
		}
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		//
		public function configure():void
		{
			this.commandMap.map(BigMLAppEvent.API_CALL,BigMLAppEvent).toCommand(BigMLCommand);
			//
			this.injector.map(IBigMLService).toSingleton(BigMLService);
			//
			this.injector.map(BigMLModel).asSingleton();
			//
			this.mediatorMap.map(MainView).toMediator(MainViewMediator);
			//Register the mixin with objobjectMapper
//			this.objectMapper.registerMixin(
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