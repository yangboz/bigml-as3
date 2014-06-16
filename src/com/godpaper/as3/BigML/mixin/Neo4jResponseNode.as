
package com.godpaper.as3.BigML.mixin
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponseNode.as class. -Create a mixin to tell Jameson which fields in the JSON document map to the ActionScript object's fields. 
	 * </br>HTTP:GET /db/data/node 
	 * @see https://github.com/mattupstate/jameson
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:42:12 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponseNode
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[JsonProperty("extensions")]
		public var extensions:Object;
		//
		[JsonProperty("outgoing_relationships")]
		public var outgoing_relationships:String;
		//
		[JsonProperty("labels")]
		public var labels:String;
		//
		[JsonProperty("traverse")]
		public var traverse:String;
		//
		[JsonProperty("all_typed_relationships")]
		public var all_typed_relationships:String;
		//
		[JsonProperty("self")]
		public var self:String;
		//
		[JsonProperty("property")]
		public var property:String;
		//
		[JsonProperty("outgoing_typed_relationships")]
		public var outgoing_typed_relationships:String;
		//
		[JsonProperty("properties")]
		public var properties:String;
		//
		[JsonProperty("incoming_relationships")]
		public var incoming_relationships:String;
		//
		[JsonProperty("create_relationship")]
		public var create_relationship:String;
		//
		[JsonProperty("paged_traverse")]
		public var paged_traverse:String;
		//
		[JsonProperty("all_relationships")]
		public var all_relationships:String;
		//
		[JsonProperty("incoming_typed_relationships")]
		public var incoming_typed_relationships:String;
		//
		[JsonProperty("data")]
		public var data:Object;
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
		public function Neo4jResponseNode()
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