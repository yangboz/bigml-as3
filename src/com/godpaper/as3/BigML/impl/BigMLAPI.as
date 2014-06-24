
package com.godpaper.as3.BigML.impl
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.core.IBigMLAPI;
	
	
	/**
	 * BigMLAPI.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Jun 24, 2014 10:24:06 AM
	 * @history 12/30/13,
	 */ 
	public class BigMLAPI extends BigMLObject implements IBigMLAPI
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var userName:String;
		private var apiKey:String;
		private var devMode:Boolean;
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
		public function BigMLAPI(userName:String,apiKey:String,devMode:Boolean=false)
		{
			super();
			//Accept the parameters.
			this.userName = userName;
			this.apiKey = apiKey;
			this.devMode = devMode;
		}
		
		public function create_source(url:String):BigMLSource
		{
			//TODO: implement function
			return null;
		}
		
		public function create_dataset(source:BigMLSource):BigMLDataSet
		{
			//TODO: implement function
			return null;
		}
		
		public function create_model(dataset:BigMLDataSet):BigMLModel
		{
			//TODO: implement function
			return null;
		}
		
		public function create_prediction(model:BigMLModel, param:Object):BigMLPrediction
		{
			//TODO: implement function
			return null;
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
	}
	
}