package §\x0e\r§
{
   import §\x1c\x10§.§\x1d\x15§;
   import §\x1c\x10§.b2DistanceJointDef;
   import §\x1c\x10§.b2MouseJointDef;
   import §\x1c\x10§.b2PrismaticJointDef;
   import §\x1c\x10§.b2PulleyJointDef;
   import §\x1c\x10§.b2RevoluteJointDef;
   import §\x1c\x10§.b2WeldJointDef;
   import §\x1c\x11§.§\x1e\b§;
   import §\x1c\x11§.§\x1e\t§;
   import §\x1c\x12§.§\x1e\x11§;
   import §\x1c\x12§.§\x1e\x13§;
   import §\x1c\x12§.b2Contact;
   import §\x1c\x13§.*;
   import §\x1c\x14§.*;
   import §\x1c\x15§.§\x1e\x14§;
   import §\x1c\x15§.b2Settings;
   import §\x1c\x16§.*;
   import §\x1c\x17§.*;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   
   public final class LogRequest
   {
      
      private static var Failed:int = 0;
      
      private static var Pool:Array = new Array();
      
      private var Sender:URLLoader;
      
      private var Target:URLRequest;
      
      private var Data:String = "";
      
      private var BaseUrl:String;
      
      public var Ready:Boolean = false;
      
      public function LogRequest()
      {
         super();
         this.Sender = new URLLoader();
         this.Sender.addEventListener(Event.COMPLETE,this.§\x1b\x18§);
         §§push(this.Sender);
         if(false)
         {
            return;
         }
         §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§\x10\x1a§);
         this.Sender.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§\t\x13§);
         this.Sender.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§\r\x06§);
         this.Target = new URLRequest();
         this.BaseUrl = "http://g" + Log.GUID + ".api.playtomic.com/tracker/q.aspx?swfid=" + Log.SWFID;
      }
      
      public static function Create() : LogRequest
      {
         var _loc1_:LogRequest = Pool.length <= 0 ? new LogRequest() : Pool.pop() as LogRequest;
         _loc1_.Data = "";
         _loc1_.Ready = false;
         return _loc1_;
      }
      
      public function §\x0f\x1c§(param1:Array) : void
      {
         var _loc3_:LogRequest = null;
         if(Failed <= 3)
         {
            var _loc2_:* = int(param1.length - 1);
            while(_loc2_ > -1)
            {
               this.Data += (this.Data != "" ? "~" : "") + param1[_loc2_];
               param1.splice(_loc2_,1);
               §§push(this.Data.length);
               if(false)
               {
                  return false;
               }
               if(§§pop() > 300)
               {
                  _loc3_ = Create();
                  _loc3_.§\x0f\x1c§(param1);
                  this.Ready = true;
                  this.Send();
                  return;
               }
               _loc2_--;
            }
            Log.Request = this;
            return;
         }
      }
      
      public function §\x0e\x04§(param1:String) : void
      {
         if(Failed <= 3)
         {
            this.Data += (this.Data != "" ? "~" : "") + param1;
            if(this.Data.length > 300)
            {
               this.Ready = true;
            }
            return;
         }
      }
      
      public function Send() : void
      {
         if(this.Data != "")
         {
            this.Target.url = this.BaseUrl + "&q=" + this.Data + "&url=" + Log.SourceUrl + "&" + Math.random() + "z";
            this.Sender.load(this.Target);
            return;
         }
      }
      
      private function §\x1b\x18§(param1:Event = null) : void
      {
         if(this.Data.indexOf("v/") == 0 || this.Data.indexOf("~v/") > -1)
         {
            Log.IncreaseViews();
         }
         if(this.Data.indexOf("p/") == 0 || this.Data.indexOf("~p/") > -1)
         {
            Log.IncreasePlays();
         }
         Pool.push(this);
      }
      
      private function §\x10\x1a§(param1:IOErrorEvent) : void
      {
         ++Failed;
      }
      
      private function §\r\x06§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function §\t\x13§(param1:HTTPStatusEvent) : void
      {
      }
   }
}

