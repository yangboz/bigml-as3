
package com.godpaper.as3.BigML.mvc.service
{
	import avmplus.FLASH10_FLAGS;
	
	import com.adobe.net.URI;
	import com.godpaper.as3.BigML.impl.BigMLResponse;
	import com.godpaper.as3.BigML.mixin.Neo4jResponseNode;
	import com.godpaper.as3.BigML.mvc.consts.BigMLConstants;
	import com.godpaper.as3.BigML.mvc.utils.BigMLUtil;
	import com.godpaper.as3.utils.LogUtil;
	
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.system.Security;
	import flash.ui.Mouse;
	import flash.utils.ByteArray;
	
	import mx.logging.ILogger;
	
	import org.httpclient.HttpClient;
	import org.httpclient.events.HttpDataEvent;
	import org.httpclient.events.HttpResponseEvent;
	import org.httpclient.events.HttpStatusEvent;
	
	import pl.mateuszmackowiak.visuals.CursorManager;
	
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * BigMLService.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:47:52 PM
	 * @history 06/16/13,
	 */ 
	public class BigMLService implements IBigMLService
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		//
		private var uri:URI;
		private var client:HttpClient;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(BigMLService);
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
		public function BigMLService()
		{
		}
		/**
		 * This function handle the RESTful APIs call subroutines.
		 * @param param BigMLConstants
		 */		
		public function callAPI(param:BigMLConstants):void
		{
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			Security.loadPolicyFile("https://bigml.io/crossdomain.xml");
			//
			this.uri = new URI(param.URL);
			this.client = new HttpClient(uri);
			//
			client.listener.onStatus = function(event:HttpStatusEvent):void {
				// Notified of response (with headers but not content)
				trace("httpclient onStatus:{0}",event.code);
			};
			
			client.listener.onData = function(event:HttpDataEvent):void {
				// For string data
				var stringData:String = event.readUTFBytes();
				
				// For data
				var data:ByteArray = event.bytes;    
				//
				trace("httpclient onData:{0}",data.toString());
				//JSON object mapper testing here.
				BigMLUtil.objectMapper.registerMixin(BigMLResponse,Neo4jResponseNode);
				var response:BigMLResponse = BigMLUtil.objectMapper.readObject(BigMLResponse,data.toString()) as BigMLResponse;
				trace("httpclient onData->response:{0}",response.toString());
			};
			
			client.listener.onComplete = function(event:HttpResponseEvent):void {
				// Notified when complete (after status and data)
				trace("httpclient onComplete:{0}",event.response);
				CursorManager.removeBusyCursor();
			};
			
			client.listener.onError = function(event:ErrorEvent):void {
				var errorMessage:String = event.text;
				trace("httpclient onError:{0}",event);
				CursorManager.removeBusyCursor();
			}; 
			trace("Prompt to BigML Restful API path: {0}",param.URL);
			//RESTful handler here.
			switch(param.RESTFUL)
			{
				case BigMLConstants.GET:
					this.client.get(this.uri);
					break;
				case BigMLConstants.POST:
					if(null == param.PARAMS){
						throw new Error("Cannot POSTing without parameters to BigML REST API.");
					}
					this.client.post(this.uri,param.PARAMS,param.CONTENT_TYPE);
					break;
				case BigMLConstants.PUT:
					this.client.put(this.uri,param.CONTENT_TYPE);
					break;
				case BigMLConstants.DELETE:
					this.client.del(this.uri);
					break;
				default:
					break;
			}
			
			//dispatch event
//			eventDispatcher.dispatchEvent(
			CursorManager.setBusyCursor();
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