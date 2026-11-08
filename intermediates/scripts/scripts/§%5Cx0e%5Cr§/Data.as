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
   import flash.text.TextFormat;
   
   public final class Data
   {
      
      public function Data()
      {
         super();
      }
      
      public static function Views(param1:Function, param2:Object = null) : void
      {
         if(param2 == null)
         {
            param2 = new Object();
         }
         var _loc3_:int = !param2.hasOwnProperty("day") ? 0 : int(param2["day"]);
         var _loc4_:int = !param2.hasOwnProperty("month") ? 0 : int(param2["month"]);
         var _loc5_:int = !param2.hasOwnProperty("year") ? 0 : int(param2["year"]);
         §\x14\x1c§("Views",param1,_loc3_,_loc4_,_loc5_);
      }
      
      public static function Plays(param1:Function, param2:Object = null) : void
      {
         if(param2 == null)
         {
            param2 = new Object();
         }
         var _loc3_:int = !param2.hasOwnProperty("day") ? 0 : int(param2["day"]);
         var _loc4_:int = !param2.hasOwnProperty("month") ? 0 : int(param2["month"]);
         var _loc5_:int = !param2.hasOwnProperty("year") ? 0 : int(param2["year"]);
         §\x14\x1c§("Plays",param1,_loc3_,_loc4_,_loc5_);
      }
      
      public static function §\x0e\x0e§(param1:Function, param2:Object = null) : void
      {
         if(param2 == null)
         {
            param2 = new Object();
            if(false)
            {
               return;
            }
         }
         var _loc3_:int = !param2.hasOwnProperty("day") ? 0 : int(param2["day"]);
         var _loc4_:int = !param2.hasOwnProperty("month") ? 0 : int(param2["month"]);
         var _loc5_:int = !param2.hasOwnProperty("year") ? 0 : int(param2["year"]);
         §\x14\x1c§("Playtime",param1,_loc3_,_loc4_,_loc5_);
      }
      
      private static function §\x14\x1c§(param1:String, param2:Function, param3:int, param4:int, param5:int) : void
      {
         var handled:Boolean = false;
         var result:Object = null;
         var sendaction:URLLoader = null;
         var type:String = param1;
         var callback:Function = param2;
         var day:int = param3;
         var month:int = param4;
         var year:int = param5;
         handled = false;
         var bridge:Function = function():void
         {
            if(callback == null || handled)
            {
               return;
            }
            handled = true;
            §§push(§§findproperty(XML));
            §§push(sendaction);
            §§push("data");
            if(false)
            {
               return;
            }
            var _loc1_:XML = §§pop().XML(§§pop()[§§pop()]);
            §§push(int(parseInt(_loc1_["status"])));
            if(false)
            {
               return;
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = parseInt(_loc1_["errorcode"]);
            §§push(_loc2_);
            §§push(1);
            if(false)
            {
               throw true;
            }
            if(§§pop() == §§pop())
            {
               result.Value = int(_loc1_["value"]);
            }
            callback(result,{
               "Success":_loc2_ == 1,
               "ErrorCode":_loc3_
            });
         };
         var fail:Function = function():void
         {
            if(!(callback == null || handled))
            {
               handled = true;
               callback(result,{
                  "Success":false,
                  "ErrorCode":1
               });
               return;
            }
         };
         var httpstatusignore:Function = function():void
         {
         };
         result = {
            "玩家":type,
            "Day":day,
            "Month":month,
            "Year":year,
            "Value":0
         };
         sendaction = new URLLoader();
         sendaction.addEventListener(Event.COMPLETE,bridge);
         sendaction.addEventListener(IOErrorEvent.IO_ERROR,fail);
         sendaction.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpstatusignore);
         sendaction.addEventListener(SecurityErrorEvent.SECURITY_ERROR,fail);
         §§push(sendaction);
         §§push(§§findproperty(URLRequest));
         §§push("http://g" + Log.GUID + ".api.playtomic.com/data/" + type + ".aspx?swfid=" + Log.SWFID + "&day=" + day + "&month=" + month + "&year=" + year + "&" + Math.random());
         if(false)
         {
            return;
         }
         §§pop().load(new §§pop().URLRequest(§§pop()));
      }
      
      public static function CustomMetric(param1:String, param2:Function, param3:Object = null) : void
      {
         var day:int;
         var month:int;
         var year:int;
         var bridge:Function;
         var fail:Function;
         var httpstatusignore:Function;
         var handled:Boolean = false;
         var result:Object = null;
         var sendaction:URLLoader = null;
         var metric:String = param1;
         var callback:Function = param2;
         var options:Object = param3;
         if(options == null)
         {
            options = new Object();
         }
         day = !options.hasOwnProperty("day") ? 0 : int(options["day"]);
         month = !options.hasOwnProperty("month") ? 0 : int(options["month"]);
         year = !options.hasOwnProperty("year") ? 0 : int(options["year"]);
         handled = false;
         bridge = function():void
         {
            if(callback == null || handled)
            {
               return;
            }
            handled = true;
            var _loc1_:XML = XML(sendaction["data"]);
            §§push(int(parseInt(_loc1_["status"])));
            if(false)
            {
               return;
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = parseInt(_loc1_["errorcode"]);
            if(_loc2_ == 1)
            {
               §§push(result);
               §§push(int(_loc1_["value"]));
               if(false)
               {
                  return;
               }
               §§pop().Value = §§pop();
            }
            §§push(§§findproperty(callback));
            §§push(result);
            §§push("Success");
            §§push(_loc2_);
            §§push(1);
            if(false)
            {
               return;
            }
            §§pop().callback(§§pop(),{
               (§§pop()):§§pop() == §§pop(),
               "ErrorCode":_loc3_
            });
         };
         fail = function():void
         {
            if(callback == null || handled)
            {
               return;
            }
            handled = true;
            callback(result,{
               "Success":false,
               "ErrorCode":1
            });
         };
         httpstatusignore = function():void
         {
         };
         result = {
            "玩家":"CustomMetric",
            "Metric":metric,
            "Day":day,
            "Month":month,
            "Year":year,
            "Value":0
         };
         sendaction = new URLLoader();
         sendaction.addEventListener(Event.COMPLETE,bridge);
         sendaction.addEventListener(IOErrorEvent.IO_ERROR,fail);
         sendaction.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpstatusignore);
         sendaction.addEventListener(SecurityErrorEvent.SECURITY_ERROR,fail);
         §§push(sendaction);
         §§push(§§findproperty(URLRequest));
         §§push("http://g" + Log.GUID + ".api.playtomic.com/data/custommetric.aspx?swfid=" + Log.SWFID + "&metric=" + escape(metric) + "&day=");
         if(false)
         {
            throw true;
         }
         §§pop().load(new §§pop().URLRequest(§§pop() + day + "&month=" + month + "&year=" + year + "&" + Math.random()));
      }
      
      public static function LevelCounterMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var day:int;
         var month:int;
         var year:int;
         var bridge:Function;
         var fail:Function;
         var handled:Boolean = false;
         var result:Object = null;
         var metric:String = param1;
         var level:* = param2;
         var callback:Function = param3;
         var options:Object = param4;
         if(options == null)
         {
            §§push(§§newactivation());
            if(false)
            {
               return;
            }
            §§pop().§§slot[4] = new Object();
         }
         day = !options.hasOwnProperty("day") ? 0 : int(options["day"]);
         §§push(§§newactivation());
         if(!options.hasOwnProperty("month"))
         {
            §§push(0);
         }
         else
         {
            §§push(options);
            §§push("month");
            if(false)
            {
               return;
            }
            §§push(int(§§pop()[§§pop()]));
         }
         §§pop().§§slot[6] = int(§§pop());
         year = !options.hasOwnProperty("year") ? 0 : int(options["year"]);
         bridge = null;
         handled = false;
         if(callback != null)
         {
            bridge = function(param1:URLLoader):void
            {
               if(callback == null || handled)
               {
                  return;
               }
               handled = true;
               var _loc2_:XML = XML(param1["data"]);
               var _loc3_:int = parseInt(_loc2_["status"]);
               var _loc4_:int = parseInt(_loc2_["errorcode"]);
               if(_loc3_ == 1)
               {
                  §§push(result);
                  §§push(§§findproperty(int));
                  §§push(_loc2_);
                  §§push("value");
                  if(false)
                  {
                     return;
                  }
                  §§pop().Value = §§pop().int(§§pop()[§§pop()]);
               }
               callback(result,{
                  "Success":_loc3_ == 1,
                  "ErrorCode":_loc4_
               });
            };
         }
         fail = function():void
         {
            if(!(callback == null || handled))
            {
               handled = true;
               §§push(§§findproperty(callback));
               §§push(result);
               §§push({
                  "Success":false,
                  "ErrorCode":1
               });
               if(false)
               {
                  return false;
               }
               §§pop().callback(§§pop(),§§pop());
               return;
            }
         };
         result = {
            "玩家":"LevelCounterMetric",
            "Metric":metric,
            "Level":level,
            "Day":day,
            "Month":month,
            "Year":year,
            "Value":0
         };
         §\x10\r§("Counter",metric,level,bridge,fail,day,month,year);
      }
      
      public static function LevelRangedMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var day:int;
         var month:int;
         var year:int;
         var bridge:Function;
         var fail:Function;
         var handled:Boolean = false;
         var result:Object = null;
         var metric:String = param1;
         var level:* = param2;
         var callback:Function = param3;
         var options:Object = param4;
         §§push(§§newactivation());
         if(false)
         {
            return false;
         }
         if(§§pop().§§slot[4] == null)
         {
            options = new Object();
         }
         day = !options.hasOwnProperty("day") ? 0 : int(options["day"]);
         month = !options.hasOwnProperty("month") ? 0 : int(options["month"]);
         §§push(§§newactivation());
         if(!options.hasOwnProperty("year"))
         {
            §§push(0);
         }
         else
         {
            §§push(options);
            if(false)
            {
               return;
            }
            §§push(int(§§pop()["year"]));
         }
         §§pop().§§slot[7] = int(§§pop());
         bridge = null;
         handled = false;
         if(callback != null)
         {
            bridge = function(param1:URLLoader):void
            {
               var _loc5_:Array = null;
               var _loc6_:XMLList = null;
               var _loc7_:XML = null;
               if(!(callback == null || handled))
               {
                  handled = true;
                  var _loc2_:XML = XML(param1["data"]);
                  var _loc3_:int = parseInt(_loc2_["status"]);
                  var _loc4_:int = parseInt(_loc2_["errorcode"]);
                  if(_loc3_ == 1)
                  {
                     _loc5_ = new Array();
                     _loc6_ = _loc2_["value"];
                     for each(_loc7_ in _loc6_)
                     {
                        result.Values.push({
                           "Value":int(_loc7_.@trackvalue),
                           "Occurances":int(_loc7_)
                        });
                     }
                  }
                  callback(result,{
                     "Success":_loc3_ == 1,
                     "ErrorCode":_loc4_
                  });
                  return;
               }
            };
         }
         fail = function():void
         {
            if(callback == null || handled)
            {
               return;
            }
            handled = true;
            §§push(§§findproperty(callback));
            §§push(result);
            §§push("Success");
            §§push(false);
            §§push("ErrorCode");
            §§push(1);
            if(false)
            {
               return;
            }
            §§pop().callback(§§pop(),null);
         };
         if(false)
         {
            return;
         }
         result = {
            "玩家":"LevelRangedMetric",
            "Metric":metric,
            "Level":level,
            "Day":day,
            "Month":month,
            "Year":year,
            "Values":[]
         };
         §§push(§§findproperty(§\x10\r§));
         §§push("Ranged");
         §§push(metric);
         §§push(level);
         §§push(bridge);
         §§push(fail);
         if(false)
         {
            return;
         }
         §§pop().§\x10\r§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),day,month,year);
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var day:int;
         var month:int;
         var year:int;
         var bridge:Function;
         var fail:Function;
         var handled:Boolean = false;
         var result:Object = null;
         var metric:String = param1;
         var level:* = param2;
         var callback:Function = param3;
         var options:Object = param4;
         if(options == null)
         {
            options = new Object();
         }
         day = !options.hasOwnProperty("day") ? 0 : int(options["day"]);
         month = !options.hasOwnProperty("month") ? 0 : int(options["month"]);
         year = !options.hasOwnProperty("year") ? 0 : int(options["year"]);
         bridge = null;
         §§push(§§newactivation());
         if(false)
         {
            return;
         }
         §§pop().§§slot[9] = false;
         if(callback != null)
         {
            bridge = function(param1:URLLoader):void
            {
               if(callback == null || handled)
               {
                  return;
               }
               handled = true;
               var _loc2_:XML = XML(param1["data"]);
               §§push(§§findproperty(parseInt));
               if(false)
               {
                  return;
               }
               var _loc3_:int = int(§§pop().parseInt(_loc2_["status"]));
               §§push(§§findproperty(parseInt));
               §§push(_loc2_);
               §§push("errorcode");
               if(false)
               {
                  return;
               }
               var _loc4_:int = int(§§pop().parseInt(§§pop()[§§pop()]));
               if(_loc3_ == 1)
               {
                  result.Min = int(_loc2_["min"]);
                  result.Max = int(_loc2_["max"]);
                  result.Average = int(_loc2_["average"]);
                  result.Total = Number(_loc2_["total"]);
               }
               callback(result,{
                  "Success":_loc3_ == 1,
                  "ErrorCode":_loc4_
               });
            };
         }
         fail = function():void
         {
            if(!(callback == null || handled))
            {
               handled = true;
               callback(result,{
                  "Success":false,
                  "ErrorCode":1
               });
               return;
            }
         };
         §§push(§§newactivation());
         §§push("玩家");
         §§push("LevelAverageMetric");
         §§push("Metric");
         §§push(metric);
         §§push("Level");
         §§push(level);
         §§push("Day");
         §§push(day);
         §§push("Month");
         §§push(month);
         §§push("Year");
         §§push(year);
         §§push("Min");
         §§push(0);
         §§push("Max");
         §§push(0);
         §§push("Average");
         §§push(0);
         §§push("Total");
         if(false)
         {
            throw true;
         }
         §§pop().§§slot[11] = null;
         §\x10\r§("Average",metric,level,bridge,fail,day,month,year);
      }
      
      private static function §\x10\r§(param1:String, param2:String, param3:*, param4:Function, param5:Function, param6:int, param7:int, param8:int) : void
      {
         var sendaction:URLLoader = null;
         var bridge:Function = null;
         var type:String = param1;
         var metric:String = param2;
         var level:* = param3;
         var callback:Function = param4;
         var fail:Function = param5;
         var day:int = param6;
         var month:int = param7;
         var year:int = param8;
         var httpstatusignore:Function = function():void
         {
         };
         sendaction = new URLLoader();
         if(callback != null)
         {
            bridge = function():void
            {
               if(callback != null)
               {
                  callback(sendaction);
                  return;
               }
            };
            sendaction.addEventListener(Event.COMPLETE,bridge);
         }
         sendaction.addEventListener(IOErrorEvent.IO_ERROR,fail);
         sendaction.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpstatusignore);
         sendaction.addEventListener(SecurityErrorEvent.SECURITY_ERROR,fail);
         §§push(sendaction);
         §§push(§§findproperty(URLRequest));
         §§push("http://g" + Log.GUID + ".api.playtomic.com/data/levelmetric" + type + ".aspx?swfid=");
         §§push(Log);
         if(false)
         {
            return;
         }
         §§pop().load(new §§pop().URLRequest(§§pop() + §§pop().SWFID + "&metric=" + escape(metric) + "&level=" + escape(level) + "&day=" + day + "&month=" + month + "&year=" + year + "&" + Math.random()));
      }
   }
}

