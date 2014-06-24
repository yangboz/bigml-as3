
package com.godpaper.as3.BigML.core
{
	import com.godpaper.as3.BigML.impl.BigMLDataSet;
	import com.godpaper.as3.BigML.impl.BigMLModel;
	import com.godpaper.as3.BigML.impl.BigMLPrediction;
	import com.godpaper.as3.BigML.impl.BigMLSource;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * IBigML.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Jun 24, 2014 10:16:46 AM
	 * @history 12/30/13,
	 */
	public interface IBigMLAPI
	{
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		function create_source(url:String):BigMLSource;
		function create_dataset(source:BigMLSource):BigMLDataSet;
		function create_model(dataset:BigMLDataSet):BigMLModel;
		function create_prediction(model:BigMLModel,param:Object):BigMLPrediction;
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
	}
}