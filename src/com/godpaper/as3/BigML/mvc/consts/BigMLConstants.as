
package com.godpaper.as3.BigML.mvc.consts
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.utils.Enum;
	
	
	/**
	 * Neo4jConstants.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 19, 2014 5:32:31 PM
	 * @history 12/30/13,
	 */ 
	final public class BigMLConstants extends Enum
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		//
		public var URL:String;
		public var QUERY:String;//Cypher query.
		public var PARAMS:Object;
		public var CONTENT_TYPE:String = "application/json; charset=UTF-8";
		//
		public static const BIGML_USERNAME:String = "yangboz";
		public static const BIGML_API_KEY:String = "0b463ec129ff48a5406e1206b43a151deb463021";
		//
		public var RESTFUL:String;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		public static const BIGML_URI:String = "http://bigml.io/";
		public static const BIGML_VERSION:String = "andromeda/";
		//BigML RESTful API resource list

		public static const SOURCE:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"source/"),BigMLConstants.GET);

		//CRUD operation.
		public static const GET:String = "GET";
		public static const POST:String = "POST";
		public static const PUT:String = "PUT";
		public static const DELETE:String = "DELETE";
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
		public function BigMLConstants(url:String,restful:String,query:String="",params:Object=null,content_type:String="application/json; charset=UTF-8")
		{
			super();
			//
			this.URL = url;
			//Append default username,api_key
			this.URL = this.URL.concat("?username=",BIGML_USERNAME,";api_key=",BIGML_API_KEY);
			this.RESTFUL = restful;
			this.QUERY = query;
			this.PARAMS = params;
			this.CONTENT_TYPE = content_type;
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