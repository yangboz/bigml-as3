
package
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import Array;
	
	import flash.display.Sprite;
	
	import flexUnitTests.BigMLAPITest;
	
	import flexunit.flexui.FlexUnitTestRunnerUIAS;
	
	
	/**
	 * FlexUnitApplication.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Jul 17, 2014 3:53:13 PM
	 * @history 12/30/13,
	 */ 
	public class FlexUnitApplication extends Sprite
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
		public function FlexUnitApplication()
		{
			onCreationComplete();
		}
		
		private function onCreationComplete():void
		{
			var testRunner:FlexUnitTestRunnerUIAS=new FlexUnitTestRunnerUIAS();
			testRunner.portNumber=8765; 
			this.addChild(testRunner); 
			testRunner.runWithFlexUnit4Runner(currentRunTestSuite(), "bigml-as3");
		}
		
		public function currentRunTestSuite():Array
		{
			var testsToRun:Array = new Array();
			testsToRun.push(flexUnitTests.BigMLAPITest);
			return testsToRun;
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