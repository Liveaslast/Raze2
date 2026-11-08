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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol629")]
   public class NodeHoldpoint extends Sprite
   {
      
      public var gear:MovieClip;
      
      public var flag:MovieClip;
      
      public var curTeam:uint;
      
      public var unitCaptured:*;
      
      public function NodeHoldpoint()
      {
         super();
         curTeam = 0;
         flag.y = -80;
         flag.gotoAndStop(curTeam + 1);
      }
      
      public function capture(param1:*) : void
      {
         if(param1.team == curTeam)
         {
            flag.y -= 0.5;
            §§push(flag.y);
            if(false)
            {
               throw true;
            }
            if(§§pop() >= -80)
            {
               gear.rotation -= 5;
            }
            else
            {
               flag.y = -80;
            }
         }
         else
         {
            flag.y += 0.5;
            if(flag.y < -25)
            {
               gear.rotation += 5;
            }
            else
            {
               curTeam = param1.team;
               flag.gotoAndStop(curTeam + 1);
               unitCaptured = param1;
               unitCaptured.game.hud.setFlags();
               param1.game.hud.addCustomFeed(param1," has captured a Flag Point!");
               if(param1.human)
               {
                  ++param1.score.domCap;
                  param1.game.hud.setDisplay(15,"Flag Point Captured!");
               }
               flag.y = -35;
            }
         }
      }
   }
}

