
package com.godpaper.as3.BigML.mixin
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponseConstraints.as class. -Create a mixin to tell Jameson which fields in the JSON document map to the ActionScript object's fields.
	 * </br>HTTP:GET /db/data/schema/constraint/User/uniqueness/name 
	 * @see https://github.com/mattupstate/jameson
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:42:12 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponseConstraints
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		//
		[JsonProperty("label")]
		public var label:String;
		//
		[JsonProperty("type")]
		public var type:String;
		//
		[JsonProperty("property_keys")]
		public var property_keys:Array;
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
		public function Neo4jResponseConstraints()
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