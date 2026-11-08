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
   
   public class Bullet_Line_Sniper extends §\x1c\x0e§
   {
      
      private var linePath:Array;
      
      private var alpha:Number = 1;
      
      public function Bullet_Line_Sniper(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         var _loc9_:uint = 0;
         §§push(this);
         §§push(param1);
         §§push(param2);
         if(false)
         {
            return false;
         }
         §§pop().super(§§pop(),§§pop(),param3,param4,param5,param6,param7,false,param8);
         _loc9_ = 0;
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            if(hitObject = §\x11\f§())
            {
               break;
            }
            _loc9_++;
         }
         §\x1a\x18§();
         if(false)
         {
            return;
         }
         curDist = Math.round(UT.getDist(ox,oy,x,y));
         var _loc10_:Number = !stats.params[0] ? -0.2 : 0.2;
         var _loc11_:Number = !stats.params[0] ? 0.2 : 0.5;
         linePath = new Array();
         linePath.push({
            "x":ox,
            "y":oy,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         §§push(0);
         if(false)
         {
            throw true;
         }
         _loc9_ = §§pop();
         while(_loc9_ < curDist)
         {
            §§push(linePath);
            §§push("x");
            §§push(ox);
            if(false)
            {
               return;
            }
            §§pop().push({
               (§§pop()):§§pop() + UT.xMoveToRot(rotation,_loc9_),
               "y":oy + UT.yMoveToRot(rotation,_loc9_),
               "lift":UT.rand(_loc10_,_loc11_)
            });
            _loc9_ += 30;
         }
         linePath.push({
            "x":x,
            "y":y,
            "lift":UT.rand(_loc10_,_loc11_)
         });
         var _loc12_:uint = 0;
         while(_loc12_ < (stats.params.length - 1) / 3)
         {
            game.lineCont.graphics.lineStyle(stats.params[_loc12_ * 3 + 1],stats.params[_loc12_ * 3 + 2],stats.params[_loc12_ * 3 + 3]);
            _loc9_ = 0;
            while(_loc9_ < linePath.length)
            {
               if(_loc9_ != 0)
               {
                  game.lineCont.graphics.lineTo(linePath[_loc9_].x,linePath[_loc9_].y);
               }
               else
               {
                  game.lineCont.graphics.moveTo(linePath[_loc9_].x,linePath[_loc9_].y);
               }
               _loc9_++;
            }
            _loc12_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         alpha -= 0.03;
         _loc1_ = 0;
         while(_loc1_ < linePath.length)
         {
            linePath[_loc1_].y -= linePath[_loc1_].lift;
            _loc1_++;
         }
         var _loc2_:uint = 0;
         while(_loc2_ < (stats.params.length - 1) / 3)
         {
            game.lineCont.graphics.lineStyle(stats.params[_loc2_ * 3 + 1],stats.params[_loc2_ * 3 + 2],stats.params[_loc2_ * 3 + 3] * alpha);
            _loc1_ = 0;
            while(_loc1_ < linePath.length)
            {
               if(_loc1_ != 0)
               {
                  game.lineCont.graphics.lineTo(linePath[_loc1_].x,linePath[_loc1_].y);
               }
               else
               {
                  game.lineCont.graphics.moveTo(linePath[_loc1_].x,linePath[_loc1_].y);
               }
               _loc1_++;
            }
            _loc2_++;
         }
         if(alpha <= 0)
         {
            removeMe();
         }
      }
   }
}

if(false)
{
   return false;
}

