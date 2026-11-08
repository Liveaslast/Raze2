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
   
   public class Bullet_Line_Effect extends §\x1c\x0e§
   {
      
      private var linePath:Array;
      
      private var alpha:Number = 1;
      
      private var toX:Number;
      
      private var toY:Number;
      
      private var toDist:Number;
      
      private var hitObjects:Array;
      
      public function Bullet_Line_Effect(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,false,param8);
         hitObjects = [];
         var _loc9_:uint = 0;
         loop0:
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            if(hitObject = §\x11\f§())
            {
               while(true)
               {
                  if(stats.extra.pierce)
                  {
                     if(hitObjects.indexOf(hitObject) != -1)
                     {
                        break;
                     }
                     §\x1a\x18§();
                     hitObjects.push(hitObject);
                     §\x1c\x05§();
                     if(hitType != "unit" && hitType != "corpse")
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §\x1a\x18§();
                  }
                  if(!(hitType == "unit" && Boolean(hitObject.status.sMirror)))
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §§push(_loc9_ + 1);
            if(false)
            {
               return false;
            }
            _loc9_ = §§pop();
         }
         var _loc10_:* = 0;
         while(_loc10_ < (stats.params.length - 1) / 3)
         {
            §§push(game.lineCont.graphics);
            §§push(stats);
            if(false)
            {
               return false;
            }
            §§push(§§pop().params[_loc10_ * 3 + 1]);
            §§push(stats);
            if(false)
            {
               return;
            }
            §§pop().lineStyle(§§pop(),§§pop().params[_loc10_ * 3 + 2],stats.params[_loc10_ * 3 + 3]);
            game.lineCont.graphics.moveTo(ox,oy);
            game.lineCont.graphics.lineTo(x,y);
            §§push(uint(_loc10_ + 1));
            if(false)
            {
               return;
            }
            _loc10_ = §§pop();
         }
         toX = ox;
         toY = oy;
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = 0;
         if(alpha > 0)
         {
            alpha -= 0.03;
            _loc1_ = 0;
            while(true)
            {
               §§push(_loc1_);
               §§push(stats);
               if(false)
               {
                  break;
               }
               if(§§pop() < (§§pop().params.length - 1) / 3)
               {
                  §§push(game.lineCont.graphics);
                  §§push(stats.params[_loc1_ * 3 + 1]);
                  §§push(stats.params[_loc1_ * 3 + 2]);
                  §§push(stats.params[_loc1_ * 3 + 3]);
                  if(false)
                  {
                     return;
                  }
                  §§pop().lineStyle(§§pop(),§§pop(),§§pop() * alpha);
                  §§push(game.lineCont.graphics);
                  §§push(ox);
                  if(false)
                  {
                     return;
                  }
                  continue;
               }
               §§pop().moveTo(§§pop(),oy);
               game.lineCont.graphics.lineTo(x,y);
               _loc1_++;
            }
            return;
         }
         var _loc3_:Number;
         toDist = _loc3_ = UT.getDist(x,y,toX,toY);
         if(_loc3_ > 30)
         {
            §§push(0);
            if(false)
            {
               return;
            }
            _loc2_ = §§pop();
            while(true)
            {
               §§push(_loc2_);
               §§push(2);
               if(false)
               {
                  return false;
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               toX += xVel * 3;
               if(false)
               {
                  return;
               }
               toY += yVel * 3;
               game.createEffect(toX,toY,stats.params[0]);
               §§push(UT);
               if(false)
               {
                  return false;
               }
               if(§§pop().getDist(x,y,toX,toY) < 40)
               {
                  break;
               }
               _loc2_++;
            }
         }
         if(alpha <= 0 && toDist <= 30)
         {
            removeMe();
         }
      }
   }
}

