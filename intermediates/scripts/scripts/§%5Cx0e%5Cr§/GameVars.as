package §\x0e\r§
{
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x16§.§\x1d\x12§;
   import §\x1c\x17§.§\x11\x06§;
   import §\x1c\x17§.§\x1d\x01§;
   import §\x1c\x17§.§\x1d\x1c§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public final class GameVars
   {
      
      public function GameVars()
      {
         super();
      }
      
      public static function Load(param1:Function) : void
      {
         var result:Object = null;
         var sendaction:URLLoader = null;
         var callback:Function = param1;
         var bridge:Function = function():*
         {
            var _loc4_:XMLList = null;
            var _loc5_:String = null;
            var _loc6_:String = null;
            var _loc7_:XML = null;
            if(callback != null)
            {
               var _loc1_:XML = XML(sendaction["data"]);
               §§push(§§findproperty(parseInt));
               §§push(_loc1_);
               §§push("status");
               if(false)
               {
                  return;
               }
               var _loc2_:int = int(§§pop().parseInt(§§pop()[§§pop()]));
               var _loc3_:int = parseInt(_loc1_["errorcode"]);
               if(_loc2_ == 1)
               {
                  _loc4_ = _loc1_["gamevar"];
                  for each(_loc7_ in _loc4_)
                  {
                     _loc5_ = _loc7_["name"];
                     _loc6_ = _loc7_["value"];
                     result[_loc5_] = _loc6_;
                  }
               }
               callback(result,{
                  "Success":_loc2_ == 1,
                  "ErrorCode":_loc3_
               });
               return;
            }
         };
         var httpstatusignore:Function = function():void
         {
         };
         var fail:Function = function():*
         {
            callback(result,{
               "Success":false,
               "ErrorCode":1
            });
         };
         result = [];
         sendaction = new URLLoader();
         sendaction.addEventListener(Event.COMPLETE,bridge);
         sendaction.addEventListener(IOErrorEvent.IO_ERROR,fail);
         sendaction.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpstatusignore);
         sendaction.addEventListener(SecurityErrorEvent.SECURITY_ERROR,fail);
         §§push(sendaction);
         §§push(§§findproperty(URLRequest));
         §§push("http://g");
         if(false)
         {
            return;
         }
         §§pop().load(new §§pop().URLRequest(§§pop() + Log.GUID + ".api.playtomic.com/gamevars/load.aspx?swfid=" + Log.SWFID + "&" + Math.random()));
      }
   }
}

