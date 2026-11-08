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
   
   public class Bullet_Line_Bend extends §\x1c\x0e§
   {
      
      private var linePath:Array;
      
      private var alpha:Number = 1;
      
      private var mid:Point;
      
      private var mid1:Point;
      
      private var mid1to:Point;
      
      private var mid2:Point;
      
      private var mid2to:Point;
      
      public function Bullet_Line_Bend(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:uint, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,false,param8);
         var _loc9_:uint = 0;
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            if(hitObject = §\x11\f§())
            {
               break;
            }
            §§push(_loc9_ + 1);
            if(false)
            {
               return;
            }
            _loc9_ = §§pop();
         }
         §§push(§§findproperty(§\x1a\x18§));
         if(false)
         {
            return;
         }
         §§pop().§\x1a\x18§();
         curDist = Math.round(UT.getDist(ox,oy,x,y));
         §§push(§§findproperty(mid));
         §§push(§§findproperty(Point));
         §§push(ox + x);
         §§push(2);
         if(false)
         {
            return false;
         }
         §§push(new §§pop().Point(§§pop() / §§pop(),(oy + y) / 2));
         if(false)
         {
            return false;
         }
         §§pop().mid = §§pop();
         mid1 = new Point((ox + mid.x) / 2,(oy + mid.y) / 2);
         mid2 = new Point((mid.x + x) / 2,(mid.y + y) / 2);
         §§push(§§findproperty(Point));
         §§push(UT);
         §§push(-50);
         if(false)
         {
            return;
         }
         var _loc10_:Point = new §§pop().Point(§§pop().rand(§§pop(),50),UT.rand(-50,50));
         §§push(§§findproperty(mid1to));
         §§push(§§findproperty(Point));
         §§push(mid1.x);
         §§push(_loc10_.x);
         if(false)
         {
            return;
         }
         §§pop().mid1to = new §§pop().Point(§§pop() + §§pop(),mid1.y + _loc10_.y);
         mid2to = new Point(mid2.x - _loc10_.x,mid2.y - _loc10_.y);
         var _loc11_:uint = 0;
         while(_loc11_ < (stats.params.length - 1) / 3)
         {
            §§push(game.lineCont.graphics);
            §§push(stats.params[_loc11_ * 3 + 1]);
            §§push(stats.params[_loc11_ * 3 + 2]);
            §§push(stats.params);
            §§push(_loc11_ * 3 + 3);
            if(false)
            {
               return;
            }
            §§pop().lineStyle(§§pop(),§§pop(),§§pop()[§§pop()]);
            game.lineCont.graphics.moveTo(ox,oy);
            game.lineCont.graphics.curveTo(mid1.x,mid1.y,mid.x,mid.y);
            §§push(game.lineCont.graphics);
            §§push(mid2);
            if(false)
            {
               throw true;
            }
            §§pop().curveTo(§§pop().x,mid2.y,x,y);
            _loc11_++;
         }
      }
      
      public function EnterFrame() : void
      {
         alpha -= 0.1;
         mid1.x += (mid1to.x - mid1.x) * 0.1;
         §§push(mid1);
         §§push(mid1.y);
         §§push(mid1to.y - mid1.y);
         §§push(0.1);
         if(false)
         {
            return;
         }
         §§pop().y = §§pop() + §§pop() * §§pop();
         §§push(mid2);
         §§push(mid2.x);
         §§push(mid2to.x);
         if(false)
         {
            throw true;
         }
         §§pop().x = §§pop() + (§§pop() - mid2.x) * 0.1;
         mid2.y += (mid2to.y - mid2.y) * 0.1;
         var _loc1_:uint = 0;
         while(_loc1_ < (stats.params.length - 1) / 3)
         {
            §§push(game.lineCont.graphics);
            §§push(stats.params);
            §§push(_loc1_ * 3);
            §§push(1);
            if(false)
            {
               return false;
            }
            §§pop().lineStyle(§§pop()[§§pop() + §§pop()],stats.params[_loc1_ * 3 + 2],stats.params[_loc1_ * 3 + 3] * alpha);
            game.lineCont.graphics.moveTo(ox,oy);
            game.lineCont.graphics.curveTo(mid1.x,mid1.y,mid.x,mid.y);
            if(false)
            {
               return;
            }
            game.lineCont.graphics.curveTo(mid2.x,mid2.y,x,y);
            _loc1_++;
         }
         if(alpha <= 0)
         {
            removeMe();
         }
      }
   }
}

