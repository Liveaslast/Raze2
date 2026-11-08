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
   import §\x1c\x12§.§\x1e\n§;
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
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
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
   import flash.utils.Timer;
   
   public final class Log
   {
      
      public static var SourceUrl:String;
      
      public static var BaseUrl:String;
      
      public static var Cookie:SharedObject;
      
      public static var Request:LogRequest;
      
      public static var Enabled:Boolean = false;
      
      public static var §\x0e\x04§:Boolean = true;
      
      public static var SWFID:int = 0;
      
      public static var GUID:String = "";
      
      private static const PingF:Timer = new Timer(60000);
      
      private static const PingR:Timer = new Timer(30000);
      
      private static var FirstPing:Boolean = true;
      
      private static var Pings:int = 0;
      
      private static var Plays:int = 0;
      
      private static var HighestGoal:int = 0;
      
      private static var Frozen:Boolean = false;
      
      private static var FrozenQueue:Array = new Array();
      
      private static var Customs:Array = new Array();
      
      private static var LevelCounters:Array = new Array();
      
      private static var LevelAverages:Array = new Array();
      
      §§push(§§findproperty(LevelRangeds));
      §§push(new Array());
      if(false)
      {
         return;
      }
      
      private static var LevelRangeds:Array = §§pop();
      
      public function Log()
      {
         super();
      }
      
      public static function View(param1:int = 0, param2:String = "", param3:String = "") : void
      {
         if(SWFID <= 0)
         {
            SWFID = param1;
            GUID = param2;
            Enabled = true;
            if(SWFID == 0 || GUID == "")
            {
               §§push(§§findproperty(Enabled));
               if(false)
               {
                  return;
               }
               §§pop().Enabled = false;
               return;
            }
            if(!(param3.indexOf("http://") != 0 && Security.sandboxType != "localWithNetwork" && Security.sandboxType != "localTrusted"))
            {
               SourceUrl = §\x11\x1d§(param3);
               if(!(SourceUrl == null || SourceUrl == "" || SourceUrl.indexOf("https://") == 0))
               {
                  Security.allowDomain("http://g" + Log.GUID + ".api.playtomic.com/");
                  Security.allowInsecureDomain("http://g" + Log.GUID + ".api.playtomic.com/");
                  Security.loadPolicyFile("http://g" + Log.GUID + ".api.playtomic.com/crossdomain.xml");
                  Request = LogRequest.Create();
                  Cookie = SharedObject.getLocal("playtomic");
                  var _loc4_:int = §\x14\f§("views");
                  §§push(§§findproperty(Send));
                  §§push("v/");
                  §§push(_loc4_ + 1);
                  if(false)
                  {
                     return;
                  }
                  §§pop().Send(§§pop() + §§pop(),true);
                  PingF.addEventListener(TimerEvent.TIMER,§\x0e\x15§);
                  PingF.start();
                  return;
               }
               Enabled = false;
               return;
            }
            Enabled = false;
            return;
         }
      }
      
      public static function IncreaseViews() : void
      {
         var _loc1_:int = §\x14\f§("views");
         _loc1_++;
         §\r\f§("views",_loc1_);
      }
      
      public static function IncreasePlays() : void
      {
         var _loc1_:* = §§findproperty(Plays);
         var _loc2_:Number = _loc1_.Plays + 1;
         _loc1_.Plays = _loc2_;
      }
      
      public static function Play() : void
      {
         if(Enabled)
         {
            LevelCounters = new Array();
            LevelAverages = new Array();
            LevelRangeds = new Array();
            Send("p/" + (Plays + 1),true);
            return;
         }
      }
      
      private static function §\x0e\x15§(... rest) : void
      {
         if(Enabled)
         {
            ++Pings;
            if(false)
            {
               throw true;
            }
            Send("t/" + (!FirstPing ? "n" : "y") + "/" + Pings,true);
            §§push(FirstPing);
            if(false)
            {
               return;
            }
            if(§§pop())
            {
               PingF.stop();
               PingR.addEventListener(TimerEvent.TIMER,§\x0e\x15§);
               PingR.start();
               FirstPing = false;
            }
            return;
         }
      }
      
      public static function CustomMetric(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         if(Enabled)
         {
            if(param2 == null)
            {
               param2 = "";
            }
            if(param3)
            {
               if(Customs.indexOf(param1) > -1)
               {
                  return;
               }
               Customs.push(param1);
            }
            §§push(§§findproperty(Send));
            §§push("c/" + §\x1c\x06§(param1));
            §§push("/");
            if(false)
            {
               return false;
            }
            §§pop().Send(§§pop() + §§pop() + §\x1c\x06§(param2));
            return;
         }
      }
      
      public static function LevelCounterMetric(param1:String, param2:*, param3:Boolean = false) : void
      {
         if(Enabled)
         {
            if(param3)
            {
               if(LevelCounters.indexOf(param1) > -1)
               {
                  return;
               }
               §§push(LevelCounters);
               §§push(param1);
               if(false)
               {
                  return;
               }
               §§pop().push(§§pop());
            }
            Send("lc/" + §\x1c\x06§(param1) + "/" + §\x1c\x06§(param2));
            return;
         }
      }
      
      public static function LevelRangedMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         if(Enabled)
         {
            if(param4)
            {
               if(LevelRangeds.indexOf(param1) > -1)
               {
                  return;
               }
               LevelRangeds.push(param1);
            }
            Send("lr/" + §\x1c\x06§(param1) + "/" + §\x1c\x06§(param2) + "/" + param3);
            return;
         }
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         if(Enabled)
         {
            if(param4)
            {
               if(LevelAverages.indexOf(param1) > -1)
               {
                  return;
               }
               LevelAverages.push(param1);
            }
            §§push(§§findproperty(Send));
            §§push("la/");
            if(false)
            {
               return;
            }
            §§pop().Send(§§pop() + §\x1c\x06§(param1) + "/" + §\x1c\x06§(param2) + "/" + param3);
            return;
         }
      }
      
      public static function Link(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         if(Enabled)
         {
            §§push(§§findproperty(Send));
            §§push("l/");
            if(false)
            {
               return;
            }
            §§pop().Send(§§pop() + §\x1c\x06§(param2) + "/" + §\x1c\x06§(param3) + "/" + §\x1c\x06§(param1) + "/" + param4 + "/" + param5 + "/" + param6);
            return;
         }
      }
      
      public static function §\x11\x0e§(param1:String, param2:String, param3:int, param4:int) : void
      {
         if(Enabled)
         {
            Send("h/" + §\x1c\x06§(param1) + "/" + §\x1c\x06§(param2) + "/" + param3 + "/" + param4);
            return;
         }
      }
      
      public static function §\x15\x01§(param1:String, param2:String, param3:int) : void
      {
         if(Enabled)
         {
            Send("f/" + §\x1c\x06§(param1) + "/" + §\x1c\x06§(param2) + "/" + param3);
            return;
         }
      }
      
      public static function §\x0e\x10§(param1:String) : void
      {
         if(Enabled)
         {
            Send("pls/" + param1);
            return;
         }
      }
      
      public static function §\x0e\x0f§(param1:String) : void
      {
         if(Enabled)
         {
            Send("plw/" + param1);
            return;
         }
      }
      
      public static function §\x0e\x12§(param1:String) : void
      {
         if(Enabled)
         {
            Send("plq/" + param1);
            return;
         }
      }
      
      public static function §\x0e\x13§(param1:String) : void
      {
         if(Enabled)
         {
            Send("plf/" + param1);
            return;
         }
      }
      
      public static function §\x0e\x11§(param1:String) : void
      {
         if(Enabled)
         {
            Send("plr/" + param1);
            return;
         }
      }
      
      public static function Freeze() : void
      {
         Frozen = true;
      }
      
      public static function §\t\x07§() : void
      {
         Frozen = false;
         Request.§\x0f\x1c§(FrozenQueue);
      }
      
      public static function ForceSend() : void
      {
         if(!Enabled || Request == null)
         {
            return;
         }
         if(FrozenQueue.length > 0)
         {
            Request.§\x0f\x1c§(FrozenQueue);
         }
         Request.Send();
         Request = LogRequest.Create();
      }
      
      private static function Send(param1:String, param2:Boolean = false) : void
      {
         if(!Frozen)
         {
            Request.§\x0e\x04§(param1);
            if(Request.Ready || param2 || !§\x0e\x04§)
            {
               Request.Send();
               Request = LogRequest.Create();
            }
            return;
         }
         FrozenQueue.push(param1);
      }
      
      private static function §\x1c\x06§(param1:String) : String
      {
         while(param1.indexOf("/") > -1)
         {
            param1 = param1.replace("/","\\");
         }
         while(param1.indexOf("~") > -1)
         {
            param1 = param1.replace("~","-");
         }
         return escape(param1);
      }
      
      private static function §\x14\f§(param1:String) : int
      {
         if(Cookie.data[param1] != undefined)
         {
            return int(Cookie.data[param1]);
         }
         return 0;
      }
      
      private static function §\r\f§(param1:String, param2:int) : void
      {
         Cookie.data[param1] = param2.toString();
         Cookie.flush();
      }
      
      private static function §\x11\x1d§(param1:String) : String
      {
         var url:String = null;
         var defaulturl:String = param1;
         if(!ExternalInterface.available)
         {
            if(defaulturl.indexOf("http://") == 0 || defaulturl.indexOf("https://") == 0)
            {
               url = defaulturl;
            }
         }
         else
         {
            try
            {
               url = String(ExternalInterface.call("window.location.href.toString"));
            }
            catch(s:Error)
            {
               §§push(s);
               §§push(_loc2_);
               if(false)
               {
                  return;
               }
               var _temp_2:* = s;
               var _temp_3:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_3);
               if(false)
               {
                  return;
               }
               §§pop().§§slot[1] = §§pop();
               §§pop().§§slot[2] = §§pop().§§slot[1];
            }
         }
         if(url == null || url == "" || url == "null")
         {
            if(!(Security.sandboxType == "localWithNetwork" || Security.sandboxType == "localTrusted"))
            {
               §§push(§§newactivation());
               §§push(null);
               if(false)
               {
                  return;
               }
               §§pop().§§slot[2] = §§pop();
            }
            else
            {
               url = "http://local-testing/";
            }
         }
         return escape(url);
      }
   }
}

