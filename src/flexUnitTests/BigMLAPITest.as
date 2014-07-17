
package flexUnitTests
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.BigML.impl.BigMLAPI;
	import com.godpaper.as3.BigML.impl.BigMLDataSet;
	import com.godpaper.as3.BigML.impl.BigMLModel;
	import com.godpaper.as3.BigML.impl.BigMLPrediction;
	import com.godpaper.as3.BigML.impl.BigMLSource;
	
	import flexunit.framework.Assert;
	
	/**
	 * BigMLAPITest.as class.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Jul 17, 2014 3:53:00 PM
	 * @history 12/30/12,
	 */
	public class BigMLAPITest
	{
		//
		private static const API_KEY:String = "0b463ec129ff48a5406e1206b43a151deb463021";
		private static const API_USERNAME:String = "yangboz";
		//
		private var bigmlAPI:BigMLAPI;
		private var bigmlSource:BigMLSource;
		private var bigmlDataset:BigMLDataSet;
		private var bigmlModel:BigMLModel;
		private var bigmlPredict:BigMLPrediction;
		//
		[Before]
		public function setUp():void
		{
			this.bigmlAPI = new BigMLAPI(API_USERNAME,API_KEY,true);
			this.bigmlSource = new BigMLSource();
		}
		
		[After]
		public function tearDown():void
		{
			this.bigmlAPI = null;
			this.bigmlSource = null;
			this.bigmlDataset = null;
			this.bigmlModel = null;
			this.bigmlPredict = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testCreate_dataset():void
		{
//			Assert.fail("Test method Not yet implemented");
			this.bigmlDataset =  this.bigmlAPI.create_dataset(this.bigmlSource);
			Assert.assertNotNull(this.bigmlDataset);
		}
		
		[Test]
		public function testCreate_model():void
		{
//			Assert.fail("Test method Not yet implemented");
			this.bigmlModel = this.bigmlAPI.create_model(this.bigmlDataset);
			Assert.assertNotNull(this.bigmlModel);
		}
		
		[Test]
		public function testCreate_prediction():void
		{
//			Assert.fail("Test method Not yet implemented");
			this.bigmlPredict = this.bigmlAPI.create_prediction(this.bigmlModel,{});
			Assert.assertNotNull(this.bigmlPredict);
		}
		
		[Test]
		public function testCreate_source():void
		{
//			Assert.fail("Test method Not yet implemented");
			Assert.assertNotNull(this.bigmlSource);
		}
		
		[Test]
		public function testPprint():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testToJsonObject():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testToJsonString():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testToString():void
		{
			Assert.fail("Test method Not yet implemented");
		}
	}
}