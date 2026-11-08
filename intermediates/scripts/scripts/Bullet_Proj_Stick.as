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
   
   public class Bullet_Proj_Stick extends §\x1c\x0e§
   {
      
      private var fc:uint = 0;
      
      private var xOff:Number = 0;
      
      private var yOff:Number = 0;
      
      public function Bullet_Proj_Stick(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,true,param8);
         xVel *= 0.5;
         yVel *= 0.5;
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(hitObject)
         {
            var _temp_1:* = §§findproperty(fc);
            ++fc;
            if(false)
            {
               return;
            }
            if(hitType == "unit")
            {
               x = hitObject.x + xOff;
               y = hitObject.y + yOff;
               if(hitObject.ability.id == "static" && Boolean(hitObject.abilityPause))
               {
                  §\x1a\x18§();
               }
               if(hitObject.dead)
               {
                  hitObject = hitObject.dead;
                  hitType = "corpse";
                  extra.corpseStick = true;
               }
            }
            if(hitType == "corpse")
            {
               x = hitObject.rdBody.GetDefinition().userData.x + xOff;
               y = hitObject.rdBody.GetDefinition().userData.y + yOff;
            }
            game.createEffect(x,y,stats.params[0]);
            if(fc == stats.params[3] * 30)
            {
               §\x1a\x18§();
            }
         }
         else
         {
            yVel += stats.params[2] * 0.1;
            _loc1_ = 0;
            while(_loc1_ < stats.params[1])
            {
               game.createEffect(x,y,stats.params[0]);
               x += xVel;
               y += yVel;
               if(SD.graphPart)
               {
                  game.createEffect(x,y,stats.params[0]);
               }
               §§push(§§findproperty(x));
               §§push(x);
               if(false)
               {
                  return false;
               }
               §§pop().x = §§pop() + xVel;
               y += yVel;
               if(hitObject = §\x11\f§())
               {
                  if(hitType == "unit")
                  {
                     xOff = x - hitObject.x;
                     yOff = y - hitObject.y;
                  }
                  if(hitType == "corpse")
                  {
                     xOff = x - hitObject.rdBody.GetDefinition().userData.x;
                     yOff = y - hitObject.rdBody.GetDefinition().userData.y;
                     extra.corpseStick = true;
                  }
                  break;
               }
               _loc1_++;
            }
         }
         if(x < 0 || x > 3000 || y < 0 || y > 3000)
         {
            removeMe();
         }
      }
   }
}

