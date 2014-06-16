
package com.godpaper.as3.BigML.mixin
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponseRelationShip.as class. -Create a mixin to tell Jameson which fields in the JSON document map to the ActionScript object's fields.
	 * </br>HTTP:GET /db/data/relationship 
	 * @see https://github.com/mattupstate/jameson
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:42:12 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponseRelationShip
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[JsonProperty("extensions")]
		public var extensions:Object;
		//
		[JsonProperty("start")]
		public var start:String;
		//
		[JsonProperty("property")]
		public var property:String;
		//
		[JsonProperty("self")]
		public var self:String;
		//
		[JsonProperty("properties")]
		public var properties:String;
		//
		[JsonProperty("type")]
		public var type:String;
		//
		[JsonProperty("end")]
		public var end:String;
		//
		[JsonProperty("data")]
		public var data:Object;
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
		public function Neo4jResponseRelationShip()
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