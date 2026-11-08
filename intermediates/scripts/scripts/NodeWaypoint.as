package
{
   import §\x0e\r§.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol570")]
   public class NodeWaypoint extends Sprite
   {
      
      public var txt_con:TextField;
      
      public var txt_id:TextField;
      
      public var arena:§\x01§;
      
      public var id:String;
      
      public var con:String;
      
      public var connects:Array;
      
      public var actionBoxes:Array;
      
      public function NodeWaypoint()
      {
         super();
         actionBoxes = new Array();
         connects = new Array();
         var _loc1_:Array = name.split("_");
         id = _loc1_[0];
         con = _loc1_[1];
         txt_id.text = id.toUpperCase();
         txt_con.text = con;
         visible = SD.debug;
      }
      
      public function setConnectors(param1:Object) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < con.length)
         {
            connects.push(param1[con.charAt(_loc2_)]);
            _loc2_++;
         }
         var _loc3_:Boolean;
         visible = _loc3_ = SD.debug;
         if(_loc3_)
         {
            _loc2_ = 0;
            while(_loc2_ < connects.length)
            {
               arena.botCont.graphics.lineStyle(3,16776960,0.3);
               §§push(arena.botCont.graphics);
               if(false)
               {
                  return;
               }
               §§pop().moveTo(x,y - 20);
               arena.botCont.graphics.lineTo((x + connects[_loc2_].x) * 0.5,(y + connects[_loc2_].y) * 0.5 - 20);
               _loc2_++;
            }
         }
      }
      
      public function setActionBox(param1:NodeAiAction) : void
      {
         actionBoxes.push(param1);
         §§push(§§findproperty(visible));
         var _temp_1:* = SD.debug;
         if(§§pop().visible = SD.debug)
         {
            arena.botCont.graphics.lineStyle(3,16751103,0.3);
            arena.botCont.graphics.moveTo(x,y - 20);
            §§push(arena.botCont.graphics);
            §§push(param1.x + param1.width / 2);
            §§push(param1.y);
            §§push(param1.height);
            if(false)
            {
               return;
            }
            §§pop().lineTo(§§pop(),§§pop() + §§pop() / 2);
         }
      }
   }
}

§§push(§§findproperty(NodeWaypoint));
if(false)
{
   return false;
}

