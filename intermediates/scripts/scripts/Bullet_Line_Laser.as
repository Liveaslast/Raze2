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
   
   public class Bullet_Line_Laser extends §\x1c\x0e§
   {
      
      private var line1:Array;
      
      private var line2:Array;
      
      public function Bullet_Line_Laser(param1:Game, param2:§\t\x06§, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,false,param8);
         line1 = [new Point(ox,oy)];
         line2 = [new Point(ox,oy)];
         var _loc9_:uint = 0;
         if(false)
         {
            return false;
         }
         while(_loc9_ < uint(maxDist / 10))
         {
            x += xVel;
            y += yVel;
            line1.push(new Point(x + UT.rand(-1,1),y + UT.rand(-1,1)));
            line2.push(new Point(x + UT.rand(-1,1),y + UT.rand(-1,1)));
            var _loc10_:*;
            hitObject = _loc10_ = §\x11\f§();
            if(_loc10_)
            {
               break;
            }
            _loc9_++;
         }
         §\x1a\x18§();
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         §§push(game.lineCont.graphics);
         §§push(stats.params[0]);
         §§push(stats.params);
         if(false)
         {
            throw true;
         }
         §§pop().lineStyle(§§pop(),§§pop()[1],stats.params[2]);
         game.lineCont.graphics.moveTo(line1[0].x,line1[0].y);
         _loc1_ = 1;
         while(_loc1_ < line1.length)
         {
            §§push(line1[_loc1_]);
            §§push(line1[_loc1_].x + UT.rand(-1,1));
            if(false)
            {
               return;
            }
            §§pop().x = §§pop();
            line1[_loc1_].y += UT.rand(-1,1);
            §§push(game.lineCont.graphics);
            §§push(line1[_loc1_].x);
            if(false)
            {
               return;
            }
            §§pop().lineTo(§§pop(),line1[_loc1_].y);
            _loc1_++;
         }
         game.lineCont.graphics.lineStyle(stats.params[3],stats.params[4],stats.params[5]);
         game.lineCont.graphics.moveTo(line2[0].x,line2[0].y);
         _loc1_ = 1;
         while(_loc1_ < line2.length)
         {
            §§push(line2);
            §§push(_loc1_);
            if(false)
            {
               return false;
            }
            §§pop()[§§pop()].x = line2[_loc1_].x + UT.rand(-1,1);
            §§push(line2[_loc1_]);
            §§push(line2[_loc1_].y);
            §§push(UT);
            §§push(-1);
            if(false)
            {
               return false;
            }
            §§pop().y = §§pop() + §§pop().rand(§§pop(),1);
            game.lineCont.graphics.lineTo(line2[_loc1_].x,line2[_loc1_].y);
            _loc1_++;
         }
         removeMe();
      }
   }
}

