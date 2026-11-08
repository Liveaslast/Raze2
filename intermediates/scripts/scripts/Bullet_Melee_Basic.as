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
   
   public class Bullet_Melee_Basic extends §\x1c\x0e§
   {
      
      public function Bullet_Melee_Basic(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,true,param8);
         var _loc9_:uint = 0;
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            §§push(§§findproperty(hitObject));
            var _temp_1:* = §\x11\f§();
            if(§§pop().hitObject = §\x11\f§())
            {
               break;
            }
            _loc9_++;
         }
         var _temp_2:* = hitType == "unit";
         §§push(_temp_2);
         if(!_temp_2)
         {
            if(false)
            {
               return;
            }
            §§pop();
            §§push(hitType == "corpse");
         }
         if(§§pop())
         {
            game.playScreenSound(UT.randEl([S_Headshot1,S_Headshot2,S_Headshot3]),x,y);
         }
         §\x1a\x18§();
         if(false)
         {
            return;
         }
         removeMe();
      }
      
      public function EnterFrame() : void
      {
      }
   }
}

