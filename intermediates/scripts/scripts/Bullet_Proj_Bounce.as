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
   
   public class Bullet_Proj_Bounce extends §\x1c\x0e§
   {
      
      private var fc:* = 0;
      
      public function Bullet_Proj_Bounce(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,true,param8);
         extra.bounce = 0;
         §\x1a\x18§();
         xVel *= 0.5;
         yVel *= 0.5;
      }
      
      public function EnterFrame() : void
      {
         var _loc2_:* = §§findproperty(fc);
         var _loc3_:Number = _loc2_.fc + 1;
         _loc2_.fc = _loc3_;
         yVel += stats.params[2] * 0.1;
         var _loc1_:uint = 0;
         while(true)
         {
            §§push(_loc1_);
            §§push(stats.params);
            if(false)
            {
               return;
            }
            if(§§pop() >= §§pop()[1])
            {
               break;
            }
            game.createEffect(x,y,stats.params[0]);
            x += xVel;
            y += yVel;
            if(SD.graphPart)
            {
               game.createEffect(x,y,stats.params[0]);
            }
            §§push(§§findproperty(x));
            §§push(x + xVel);
            if(false)
            {
               return;
            }
            §§pop().x = §§pop();
            y += yVel;
            §§push(§§findproperty(hitObject));
            §§push(§§findproperty(§\x11\f§));
            §§push(0);
            if(false)
            {
               return;
            }
            var _temp_2:* = §§pop();
            if(§§pop().hitObject = §§pop().§\x11\f§(_temp_2,_temp_2,true))
            {
               break;
            }
            if(§\x11\x0b§(0,0))
            {
               if(§\x11\x0b§(0,15))
               {
                  _loc2_ = extra;
                  _loc3_ = _loc2_.bounce + 1;
                  _loc2_.bounce = _loc3_;
                  §§push(§§findproperty(y));
                  §§push(y);
                  §§push(yVel);
                  if(false)
                  {
                     throw true;
                  }
                  §§pop().y = §§pop() - §§pop() * 4;
                  yVel *= -0.5;
                  xVel *= 0.8;
               }
               if(§\x11\x0b§(0,-15))
               {
                  var _temp_5:* = extra;
                  _loc2_ = extra;
                  _loc3_ = _loc2_.bounce + 1;
                  _loc2_.bounce = _loc3_;
                  y -= yVel * 4;
                  §§push(§§findproperty(yVel));
                  if(false)
                  {
                     return;
                  }
                  §§pop().yVel = yVel * -0.5;
                  xVel *= 0.8;
               }
               if(§\x11\x0b§(10,-10))
               {
                  _loc2_ = extra;
                  _loc3_ = _loc2_.bounce + 1;
                  _loc2_.bounce = _loc3_;
                  x -= xVel * 2;
                  xVel *= -0.6;
                  yVel *= 0.7;
               }
               if(§\x11\x0b§(-10,-10))
               {
                  _loc2_ = extra;
                  §§push(_loc2_.bounce);
                  if(false)
                  {
                     return false;
                  }
                  _loc3_ = §§pop() + 1;
                  _loc2_.bounce = _loc3_;
                  x -= xVel * 2;
                  xVel *= -0.6;
                  yVel *= 0.7;
               }
            }
            _loc1_++;
         }
         §\x1a\x18§();
         §§push(fc);
         §§push(stats);
         if(false)
         {
            return;
         }
         if(§§pop() == §§pop().params[3] * 30)
         {
            §\x1a\x18§(true);
         }
         if(x < 0 || x > 3000 || y < 0 || y > 3000)
         {
            removeMe();
         }
      }
   }
}

