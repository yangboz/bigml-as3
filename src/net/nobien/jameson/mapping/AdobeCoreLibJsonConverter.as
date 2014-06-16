package net.nobien.jameson.mapping {
    
    import com.adobe.serialization.json.JSON;
    
    public class AdobeCoreLibJsonConverter implements IJsonConverter {
        
        public function AdobeCoreLibJsonConverter() {
        }
        
        public function parse(json:String):* {
            return com.adobe.serialization.json.JSON.decode(json);
        }
        
        public function stringify(obj:*):String {
            return com.adobe.serialization.json.JSON.encode(obj);
        }
        
    }
    
}