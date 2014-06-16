
package com.godpaper.as3.BigML.mixin
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponse404.as class. -Create a mixin to tell Jameson which fields in the JSON document map to the ActionScript object's fields. 
	 * </br>HTTP:GET /db/data/node/xxxxx 404/409/ Not Found,Get non-existent node/property something else bad status response.
	 * @see https://github.com/mattupstate/jameson
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:42:12 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponseBad
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[JsonProperty("message")]
		public var message:String;
		//
		[JsonProperty("exception")]
		public var exception:String;
		//
		[JsonProperty("fullname")]
		public var fullname:String;
		//
		[JsonProperty("stacktrace")]
		public var stacktrace:Array;
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
		public function Neo4jResponseBad()
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