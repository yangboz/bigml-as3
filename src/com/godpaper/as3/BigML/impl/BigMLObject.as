
package com.godpaper.as3.BigML.impl
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.adobe.serialization.json.JSONDecoder;
	import com.adobe.serialization.json.JSONEncoder;
	import com.godpaper.as3.BigML.core.IBigMLObject;
	
	import mx.utils.ObjectUtil;
	
	/**
	 * BigMLObject.as class. -abstracted prototype for BigML.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 3:25:46 PM
	 * @history 12/30/13,
	 */ 
	public class BigMLObject implements IBigMLObject
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		
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
		public function BigMLObject()
		{
			//TODO: implement function
		}
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		/**
		 * 
		 * @return AS3 String
		 * 
		 */		
		public function toString():String
		{
			return ObjectUtil.toString(this);
		}
		/**
		 * 
		 * @return JSON Object
		 * 
		 */		
		public function toJsonObject():IBigMLObject
		{
			var coder:JSONDecoder = new JSONDecoder(this.toString(),false);
			return coder.getValue();
		}
		/**
		 * 
		 * @return JSON String
		 * 
		 */		
		public function toJsonString():String
		{
			var coder:JSONEncoder = new JSONEncoder(this.toString());
			return coder.getString();
		} 
		/**
		 * 
		 * @param target trace-able object.
		 * 
		 */		
		public function pprint(target:Object):void
		{
			trace(ObjectUtil.toString(target));
		}
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