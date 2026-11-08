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
   
   public class Bullet_Proj_Mine extends §\x1c\x0e§
   {
      
      private var fc:uint = 0;
      
      private var hitWall:Boolean;
      
      public function Bullet_Proj_Mine(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,true,param8);
         yVel = 0;
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         ++fc;
         if(!(!hitWall && §\x11\x0b§(0,8)))
         {
            hitObject = §\x11\f§(0,-10,true);
         }
         else
         {
            _loc1_ = 0;
            while(§\x11\x0b§(0,8) && _loc1_ < 100)
            {
               y -= 3;
               _loc1_++;
            }
            §§push(§§findproperty(hitWall));
            if(false)
            {
               return;
            }
            §§pop().hitWall = true;
         }
         §§push(game.bitscreen);
         §§push(x + game.arena.x);
         §§push(y + game.arena.y);
         §§push(true);
         §§push("mine0");
         if(!(fc / 2 % 2 == 0 && hitWall))
         {
            §§push("off");
         }
         else
         {
            var _temp_5:* = unit.human;
            §§push(_temp_5);
            §§push(_temp_5);
            if(false)
            {
               return;
            }
            if(!§§pop())
            {
               §§pop();
               §§push(unit.team == 1);
            }
            if(§§pop())
            {
               §§push("team");
               if(false)
               {
                  return;
               }
            }
            else
            {
               §§push("on");
            }
         }
         §§pop().paint(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         if(hitWall)
         {
            if(Boolean(hitType == "unit" && hitObject != unit) && (!unit.team ? Boolean(true) : Boolean(hitObject.team != unit.team)) || fc == stats.params[0] * 30)
            {
               §\x1a\x18§(true);
               if(false)
               {
                  return;
               }
            }
         }
         else
         {
            yVel += 2;
            if(yVel > 15)
            {
               yVel = 15;
            }
            y += yVel;
         }
      }
      
      override protected function removeMe() : void
      {
         remove = true;
      }
   }
}

