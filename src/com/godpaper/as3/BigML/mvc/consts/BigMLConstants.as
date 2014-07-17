
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
		public static const BIGML_URI:String = "https://bigml.io/";
		public static const BIGML_VERSION:String = "andromeda/";
		//BigML RESTful API resource list

		public static const SOURCE_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"source/"),BigMLConstants.GET);
		public static const DATASET_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"dataset/"),BigMLConstants.GET);
		public static const MODEL_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"model/"),BigMLConstants.GET);
		public static const PREDICTION_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"prediction/"),BigMLConstants.GET);
		public static const EVALUATION_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"evaluation/"),BigMLConstants.GET);
		public static const ENSEMBLE_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"ensemble/"),BigMLConstants.GET);
		public static const BATCH_PREDICTION_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"batchprediction/"),BigMLConstants.GET);
		public static const CLUSTER_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"cluster/"),BigMLConstants.GET);
		public static const CENTROID_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"centroid/"),BigMLConstants.GET);
		public static const BATCH_CENTROID_PATH:BigMLConstants = new BigMLConstants(BIGML_URI.concat(BIGML_VERSION,"batchcentroid/"),BigMLConstants.GET);
			
		//CRUD operation.
		public static const GET:String = "GET";
		public static const POST:String = "POST";
		public static const PUT:String = "PUT";
		public static const DELETE:String = "DELETE";
		// HTTP Status Codes from https://bigml.com/developers/status_codes
		public static const HTTP_OK:int = 200;
		public static const HTTP_CREATED:int = 201;
		public static const HTTP_ACCEPTED:int = 202;
		public static const HTTP_NO_CONTENT:int = 204;
		public static const HTTP_BAD_REQUEST:int = 400;
		public static const HTTP_UNAUTHORIZED:int = 401;
		public static const HTTP_PAYMENT_REQUIRED:int = 402;
		public static const HTTP_FORBIDDEN:int = 403;
		public static const HTTP_NOT_FOUND:int = 404;
		public static const HTTP_METHOD_NOT_ALLOWED:int = 405;
		public static const HTTP_TOO_MANY_REQUESTS:int = 429;
		public static const HTTP_LENGTH_REQUIRED:int = 411;
		public static const HTTP_INTERNAL_SERVER_ERROR:int = 500;
		//TODO:More translation it from https://github.com/bigmlcom/python/blob/next/bigml/api.py
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