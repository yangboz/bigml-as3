
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
		public var RESTFUL:String;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		public static const NEO4J_URI:String = "http://localhost:7474/";
		//Neo4j RESTful API resource list
//		public static const STATUS_CODE:String = NEO4J_URI.concat("");
//		public static const SERVICE_ROOT:String = NEO4J_URI.concat("");
//		public static const PROPERTY_VALUES:String = NEO4J_URI.concat("");
//		public static const NODES:String = NEO4J_URI.concat("");
		public static const NODES:BigMLConstants = new BigMLConstants(NEO4J_URI.concat("db/data/node"),BigMLConstants.GET);
//		public static const RELATIONSHIPS:String = NEO4J_URI.concat("");
//		public static const RELATIONSHIP_TYPES:String = NEO4J_URI.concat("");
//		public static const NODE_PROPERTIES:String = NEO4J_URI.concat("");
//		public static const RELATIONSHIP_PROPERTIES:String = NEO4J_URI.concat("");
//		public static const INDEXING:String = NEO4J_URI.concat("");
//		public static const CONSTRAINTS:String = NEO4J_URI.concat("");
//		public static const TRAVERSALS:String = NEO4J_URI.concat("");
//		public static const GRAPH_ALGORITHMS:String = NEO4J_URI.concat("");
//		public static const BATCH_OPERATIONS:String = NEO4J_URI.concat("");
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