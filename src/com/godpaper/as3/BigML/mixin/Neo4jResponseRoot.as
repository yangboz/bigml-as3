
package com.godpaper.as3.BigML.mixin
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponseRoot.as class. -Create a mixin to tell Jameson which fields in the JSON document map to the ActionScript object's fields.
	 * </br>HTTP:GET /db/data 
	 * @see https://github.com/mattupstate/jameson
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:42:12 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponseRoot
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[JsonProperty("extensions")]
		public var extensions:Object;
		//
		[JsonProperty("node")]
		public var node:String;
		//
		[JsonProperty("node_index")]
		public var node_index:String;
		//
		[JsonProperty("relationship_index")]
		public var relationship_index:String;
		//
		[JsonProperty("extensions_info")]
		public var extensions_info:String;
		//
		[JsonProperty("relationship_types")]
		public var relationship_types:String;
		//
		[JsonProperty("batch")]
		public var batch:String;
		//
		[JsonProperty("cypher")]
		public var cypher:String;
		//
		[JsonProperty("indexes")]
		public var indexes:String;
		//
		[JsonProperty("constraints")]
		public var constraints:String;
		//
		[JsonProperty("transaction")]
		public var transaction:String;
		//
		[JsonProperty("node_labels")]
		public var node_labels:String;
		//
		[JsonProperty("neo4j_version")]
		public var neo4j_version:String;
		//
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
		public function Neo4jResponseRoot()
		{
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